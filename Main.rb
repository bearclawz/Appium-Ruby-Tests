

  require 'selenium-webdriver'
  require 'appium_lib'
  require 'rubygems'
  require './TestButtonsAvailable'
  require './ButtonResponsive'

  # class AppiumInitiate

  APP_PATH = '/Users/kev/Desktop/KevTestApp.app'

  desired_caps = {
      caps: {
          platformName:  'iOS',
          platformVersion: '10.3',
          deviceName:    'iPhone 5',
          udid: 'auto',
          bundleId: 'com.bearclaw.KevTestApp',
          xcodeOrgId: 'B7B43ZY837',
          xcodeSigningId: 'iPhone Developer',
          updatedWDABundleId: 'com.bearclaw.*',
          app:           APP_PATH,
          automationName: "XCUITest"
      }
  }

  # initialize driver:
  @driver = Appium::Driver.new(desired_caps, false).start_driver

  # load appium methods:
  # Appium.promote_appium_methods self.class

  # run tests:

  buttonchecks = TestButtonsAvailable.new(@driver)
  @test1 = buttonchecks.buttonCheck

  buttonresponse = ButtonResponsive.new(@driver)
  @test2 = buttonresponse.buttonResponse

  # results:
  puts @test1
  puts @test2


  @driver.quit

  # end