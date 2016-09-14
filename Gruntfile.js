module.exports = function(grunt) {

  grunt.initConfig({
    copy: {
      bootstrap: {
        files: [
          {
            expand: true,
            cwd: 'bower_components/bootstrap-sass/assets/javascripts',
            src: ['bootstrap.min.js'],
            dest: 'vendor/assets/javascripts/'
          }
        ]
      },
      jquery: {
        files: [
          {
            expand: true,
            cwd: 'bower_components/jquery/dist',
            src: ['jquery.min.js'],
            dest: 'vendor/assets/javascripts/'
          }
        ]
      },
      fontawesome: {
        files: [
          {
            expand: true,
            cwd: 'bower_components/font-awesome/css/',
            src: ['font-awesome.min.css'],
            dest: 'vendor/assets/css/'
          },
          {
            expand: true,
            cwd: 'bower_components/font-awesome/fonts/',
            src: ['*'],
            dest: 'vendor/assets/fonts/'
          }
        ]
      },
    }
  });

  grunt.loadNpmTasks('grunt-contrib-copy');

  grunt.registerTask('default', [
    'copy'
  ]);
};
