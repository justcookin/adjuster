# Adjuster

A RESTful spell checker and image re-sizing service. 

Whether fixing bad spelling or making a thumnail, Adjuster adjusts.

## Examples

#### Spellchecker
Example request:
```
http://localhost:3001/spellcheck/misspelt
```
Example response:
```
<data SpellingCorrect="false">
  <Suggestions>
    <Suggestion>miss pelt</Suggestion>
    <Suggestion>miss-pelt</Suggestion>
    <Suggestion>misspell</Suggestion>
    <Suggestion>misspent</Suggestion>
    <Suggestion>misspelled</Suggestion>
    <Suggestion>misspells</Suggestion>
    <Suggestion>misspend</Suggestion>
  </Suggestions>
</data>
```

#### Image Resizer
Example request:
```
http://www.example.com/adjust-image/200/300?url=http://www.link.to/web/image.jpg
```
Example response:
```
redirect to http://www.example.com/images/image200x300.jpg 
```

## Setup Environment

The quickest way to try out Adjuster is to load a Vagrant box. First you want to ***download Vagrant***:
[Download Vagrant](http://downloads.vagrantup.com/)

Then follow the documentation for ***Installing***:
[Installing Vagrant](http://docs.vagrantup.com/v2/installation/index.html)

Once you have Vagrant sucessfully installed simply run `vagrant up` from the base directory and you should(after a few moments or a little more...) have a shiny new vagrant box test server set up to run Adjuster.

Now run `vagrant ssh` and this should log you into the Vagrant box.

Change directories to /vagrant `cd /vagrant`. You are ready to start the app.


## Run 

From the /vagrant directory run `perl Adjuster/bin/app.pl`. This should run a testing server in which you can try out Adjuster's services. You can now open a browser and send requests. 

```
http://localhost:3001/spellcheck/:word
http://localhost:3001/adjust-image/:height/:width?url=:url
```




