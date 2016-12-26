const gulp = require('gulp');
const config = require('./config');
const jshint = require('gulp-jshint');

gulp.task('lint', () => {
  return gulp.src(config.lib)
    .pipe(jshint({
      esversion: 6,
      lookup: false,
      eqeqeq: true,
      indent: 2,
      newcap: true,
      quotmark: 'single',
      boss: true
    })).pipe(jshint.reporter('jshint-stylish'));
});

