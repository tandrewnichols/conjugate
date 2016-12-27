const path = require('path');

module.exports = {
  tests: ['test/**/*.coffee', '!test/helpers/**/*.coffee'],
  helpers: ['test/helpers/**/*.coffee'],
  lib: ['lib/**/*.js'],
  root: path.resolve(__dirname, '..') + path.sep
};
