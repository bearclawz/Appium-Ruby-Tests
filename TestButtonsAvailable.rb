
require 'selenium-webdriver'
require 'appium_lib'
require 'rubygems'


class TestButtonsAvailable

  def initialize(driver)
    @driver = driver
    @buttons = %w(red orange green)
  end

  def buttonCheck
    for colour in @buttons
      if (@driver.find_element :accessibility_id, colour)
        puts "#{colour} button found"
      else
        puts "#{colour} button not found"
        return false
      end
    end
    return true
  end

end