const gulp = require('gulp');
const clean = require('gulp-clean');

gulp.task('clean:coverage', () => {
  return gulp.src('./coverage', { read: false })
    .pipe(clean());
});

gulp.task('clean:dist', () => {
  return gulp.src('./dist', { read: false })
    .pipe(clean());
});

