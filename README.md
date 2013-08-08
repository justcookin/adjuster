# Adjuster

A RESTful spell checker and image re-sizing service.

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
