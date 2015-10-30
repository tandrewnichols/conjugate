[![Build Status](https://travis-ci.org/tandrewnichols/conjugate.png)](https://travis-ci.org/tandrewnichols/conjugate) [![downloads](http://img.shields.io/npm/dm/conjugate.svg)](https://npmjs.org/package/conjugate) [![npm](http://img.shields.io/npm/v/conjugate.svg)](https://npmjs.org/package/conjugate) [![Code Climate](https://codeclimate.com/github/tandrewnichols/conjugate/badges/gpa.svg)](https://codeclimate.com/github/tandrewnichols/conjugate) [![Test Coverage](https://codeclimate.com/github/tandrewnichols/conjugate/badges/coverage.svg)](https://codeclimate.com/github/tandrewnichols/conjugate) [![dependencies](https://david-dm.org/tandrewnichols/conjugate.png)](https://david-dm.org/tandrewnichols/conjugate) ![Size](https://img.shields.io/badge/size-739b-brightgreen.svg)

# conjugate

Conjugate verbs correctly based on a pronoun

## Installation

`npm install --save conjugate`

## Summary

Pass a pronoun and verb to `conjugate`, and it will return the verb conjugated for that pronoun.

```js
var conjugate = require('conjugate');
console.log(conjugate('he', 'run')); // 'runs'
```

## Usage

### Node

This is, for now, a one way conjugator. You must pass in the infinitive form of a verb (with or without "to") to get a correct conjugation. E.g.

```js
conjugate('I', 'run');
```

or

```js
conjugate('I', 'to run');
```

but not

```js
conjugate('I', 'runs');
```

The latter would return "runs." This is probably not what you want. It would be nice for this library to, eventually, parse a verb in any form and conjugate it to the perspective desired (or even back to the infinitive). The problem is that this is much harder to do (if a verb ends in "s," is it an already conjugated verb like "runs" or simply a verb that ends in "s" like "pass"), and frankly, the module I wrote this for does not require this functionality.

I tried to find all the unusual verb forms I could, so many irregular verbs should still conjugate correctly, e.g.:

```js
conjugate('he', 'do') // he does
conjugate('she', 'spy') // he spies
conjugate('it', 'buzz') // he buzzes

// and even
conjugate('I', 'be') // I am
```

but there are three caveats. First, it's not impossible that I missed cases, so please open pull requests if you find verbs that don't conjugate correctly. Second, some words _don't_ conjugate (see [defective verbs](https://en.wikipedia.org/wiki/Defective_verb#Common_defectives)), but this module does not attempt to detect these or do anything special with them. For instance, `conjugate('he', 'beware')` will return 'bewares,' which is not an actual verb. The problem is, what do you return if the word does not exist? Nothing? There's no good answer. Third, this module does not verify words against a dictionary or anything like that, so if you pass nonsense, it will be conjugated according the same parsing rules. E.g. `conjugate('she', 'blergifo')` will return 'blergifoes.' I guess this could be considered a feature if you are wanting to make up your own words. ¯\\_(ツ)_/¯

You can also make `conjugate` return the pronoun and conjugated verb together by passing `true` (for "append") as the third parameter.

```js
conjugate('he', 'be', true) // he is
```

### Browser

Serve either dist/conjugate.js or dist/conjugate.min.js however you serve javascript in your application, and then use `window.conjugate` (or just `conjugate`) to access the library on the client-side.

## Contributing

Please see [the contribution guidelines](CONTRIBUTING.md).
