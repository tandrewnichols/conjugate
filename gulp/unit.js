const gulp = require('gulp');
const config = require('./config');
const mocha = require('gulp-mocha');

gulp.task('unit', () => {
  return gulp.src(config.tests, { read: false })
    .pipe(mocha({
      reporter: 'dot',
      ui: 'mocha-given',
      require: ['coffee-script/register', 'should']
    }));
});

