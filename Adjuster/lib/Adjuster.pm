package Adjuster;
use strict;
use warnings;
use Dancer;
use Text::Aspell;
use File::Basename;
use Image::Magick;

set serializer => 'XML';
#set serializer => 'Dumper'; #un-comment this for json format responses

# adjust_image - takes height width and image url
get '/adjust-image/:height/:width' => sub {
    my $url = params->{url};
    my $height = params->{height};
    my $width = params->{width};

    # validate that height and width are numeric  
    # limit to 4 places long, change if needed
    die "Height must be a numeric value\n" unless
	$height =~ /^\d{1,4}$/;
    die "Width must be a numeric value\n" unless
	$width =~ /^\d{1,4}$/;

    # resize image
    my $image = Image::Magick->new();
    my $x = $image->Read($url);
    $image->Resize(height => $height, width => $width);

    # save image
    my $name = basename($url);
    $x = $image->Write("/vagrant/Adjuster/public/images/$name");
    warn "Error loading image check image URL\n" if "$x";
    redirect "/images/" . $name;
};

get '/spellcheck/:word' => sub {
    my $word = params->{word};
    
    # set up dictionary
    my $speller = Text::Aspell->new;
    $speller->set_option('sug-mode','fast');
    
    # check word and get suggestions if misspelled
    if ($speller->check( $word )) {
	{  { SpellingCorrect => "true" ,
	     Word => $word, }
	};
    } else {
	my @suggestions = $speller->suggest( $word );
	{ SpellingCorrect => 'false',
	  Suggestions => { Suggestion => \@suggestions }
	};
    }
    
};

dance;
