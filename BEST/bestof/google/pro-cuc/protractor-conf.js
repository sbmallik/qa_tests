exports.config = {
  seleniumAddress: 'http://localhost:4444/wd/hub',
  framework: 'cucumber',
  specs: [
    'features/*.feature'
  ],
  capabilities: {
        'browserName': 'firefox'
  },
  cucumberOpts: {
    require: 'features/steps/*_steps.js',
    format: 'pretty'
  }
}