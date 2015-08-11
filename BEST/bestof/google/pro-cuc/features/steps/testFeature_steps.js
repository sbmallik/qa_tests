var chai = require('chai');

var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);

var expect = chai.expect;

module.exports = function() {

  this.Given(/^I go to the Bestof Desert Sun homepage$/, function (callback) {
    browser.ignoreSynchronization = true;
    browser.get('http://bestof.desertsun.com/2015/home');
    callback()
  });

  this.Then(/^the title should equal "([^"]*)"$/, function (arg1, callback) {
    expect(browser.getTitle()).to.eventually.equal(arg1);
    callback();
  });

  this.Then(/^the menu should contain "([^"]*)"$/, function (arg1, callback) {
    var text = ""
      text = browser.getPageSource();
     expect(text).to.eventually.contain(arg1);
    callback();
  });
}