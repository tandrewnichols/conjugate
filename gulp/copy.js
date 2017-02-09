const gulp = require('gulp');
const config = require('./config');

gulp.task('copy', ['clean:dist'], () => {
  gulp.src(config.lib)
    .pipe(gulp.dest('dist'));
});
