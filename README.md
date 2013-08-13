# Adjuster

A RESTful spell checker and image re-sizing service. 

Whether fixing bad spelling or making a thumbnail, Adjuster adjusts.

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

Once you have Vagrant sucessfully installed simply run `vagrant up` from the base directory and you should(after a few moments or a little more...) have a shiny new vagrant box test server set up to run Adjuster. As soon as the vagrant box is up and running you should be able to access the services from your browser following the instructions under "Run" below.

## Run 

To access Adjuster's services use the following:

```
http://localhost:3001/spellcheck/:word
http://localhost:3001/adjust-image/:height/:width?url=:url
```
Substitute the parameters preceded with a ':' with the values you choose to Adjust.

## Stopping the services and restarting

To make it easy to run the services using the vagrant box it defaults to starting the test server once you boot. If you want to stop the service and log into the vagrant box hit `ctrl-c` twice in the shell running vagrant, it should bring you back to the command prompt. Enter `vagrant ssh` to gain ssh access to the box. Make sure you run `ps aux | grep perl` and `sudo kill <pid>` to kill the current running process.

To restart the services change directories to /vagrant - `cd /vagrant` and run `perl Adjuster/bin/app.pl`. 

## Under the hood

Adjuster/lib/Adjuster.pm is where most of the action takes place for both Image Resizer and Spellchecker.
bootstrap.sh contains all the dependency info, which is basically updating with .deb packages since Adjuster was developed on Ubuntu Precise 12.04 vagrant box.


