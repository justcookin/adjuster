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
