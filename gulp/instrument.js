const gulp = require('gulp');
const istanbul = require('gulp-istanbul');
const config = require('./config');

gulp.task('instrument', () => {
  gulp.src(config.lib)
    .pipe(istanbul({
      includeUntested: true
    }))
    .pipe(istanbul.hookRequire());
});
