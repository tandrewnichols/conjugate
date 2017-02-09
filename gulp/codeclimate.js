const gulp = require('gulp');
const cp = require('child_process');
const codeclimate = require('gulp-codeclimate-reporter');

gulp.task('codeclimate', () => {
  if (process.version.indexOf('v4') > -1) {
    gulp.src('coverage/lcov.info', { read: false })
      .pipe(codeclimate({
        token: 'd78056def1faa3a69d11410de777605323c05c4931c5172506aaf99d3d2832ac'
      }));
  }
});

