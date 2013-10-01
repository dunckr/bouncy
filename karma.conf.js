// Karma configuration

// base path, that will be used to resolve files and exclude
basePath = '';

// list of files / patterns to load in the browser
files = [
  JASMINE,
  JASMINE_ADAPTER,
  'app/bower_components/easeljs/lib/easeljs-0.6.1.min.js',
  'app/bower_components/jquery/jquery.js',
  'app/bower_components/jasmine-jquery/lib/jasmine-jquery.js',
  'app/bower_components/underscore/underscore.js',
  'app/bower_components/backbone/backbone.js',
  // TODO requirejs
  'app/scripts/main.coffee',
  'app/scripts/models/stage.coffee',
  'app/scripts/collections/balls.coffee',
  'app/scripts/models/catch.coffee',
  'app/scripts/models/timer.coffee',
  'app/scripts/config/config.coffee',
  'app/scripts/models/game.coffee',
  'app/scripts/models/line.coffee',
  'app/scripts/models/ball.coffee',
  'app/scripts/collections/levelSelect.coffee',
  'app/scripts/*.coffee',
  'app/scripts/**/*.coffee',
  'test/spec/**/*.coffee'
];

// list of files to exclude
exclude = [];

// test results reporter to use
// possible values: dots || progress || growl
reporters = ['progress'];

// web server port
port = 8081;

// cli runner port
runnerPort = 9100;

// enable / disable colors in the output (reporters and logs)
colors = true;

// level of logging
// possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
logLevel = LOG_INFO;

// enable / disable watching file and executing tests whenever any file changes
autoWatch = false;

// Start these browsers, currently available:
// - Chrome
// - ChromeCanary
// - Firefox
// - Opera
// - Safari (only Mac)
// - PhantomJS
// - IE (only Windows)
browsers = ['PhantomJS'];

// If browser does not capture in given timeout [ms], kill it
captureTimeout = 5000;

// Continuous Integration mode
// if true, it capture browsers, run tests and exit
singleRun = false;
