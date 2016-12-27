(function() {
  var isNode = typeof module !== 'undefined' && this.module !== module;

  var isThirdPerson = function(pronoun) {
    return [ 'he', 'she', 'it' ].indexOf(pronoun.toLowerCase()) > -1;
  };

  var patterns = [
    {
      pattern: /^have$/,
      process: function(pronoun, verb) {
        return isThirdPerson(pronoun) ? 'has' : verb;
      }
    },
    {
      pattern: /^(can|could|should|may)$/,
      process: function(pronoun, verb) {
        return verb;
      }
    },
    {
      pattern: /(o|s|sh|ch|z|j|x)$/,
      process: function(pronoun, verb) {
        return isThirdPerson(pronoun) ? verb + 'es' : verb;
      }
    },
    {
      pattern: /y$/,
      process: function(pronoun, verb) {
        return isThirdPerson(pronoun) ? verb.replace(/y$/, 'ies') : verb;
      }
    },
    {
      pattern: /^be$/,
      process: function(pronoun, verb) {
        switch (pronoun) {
          case 'I':
            return 'am';
          case 'he':
          case 'she':
          case 'it':
            return 'is';
          default:
            return 'are';
        }
      }
    },
    {
      pattern: /.*/,
      process: function(pronoun, verb) {
        return isThirdPerson(pronoun) ? verb + 's' : verb;
      }
    }
  ];

  var conjugate = function(pronoun, verb, append) {
    if (/^to /.test(verb)) {
      verb = verb.replace('to ', '');
    }

    var result;
    for (var i = 0; i < patterns.length; i++) {
      if (patterns[i].pattern.test(verb)) {
        result = patterns[i].process(pronoun, verb);
        break;
      }
    }

    return append ? pronoun + ' ' + result : result;
  };

  /* istanbul ignore else */
  if (isNode) {
    module.exports = conjugate;
  } else {
    window.conjugate = conjugate;
  }
})();
