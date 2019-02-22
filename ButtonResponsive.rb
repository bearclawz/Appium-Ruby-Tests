require 'selenium-webdriver'
require 'appium_lib'
require 'rubygems'

class ButtonResponsive

  def initialize(driver)
    @driver = driver
    @buttons = %w(red orange green)
  end

  def buttonResponse
    for colour in @buttons
      if ((@driver.find_element :accessibility_id, colour).click)
        puts "#{colour} button clicked"
        # return "The light is... " + colour.upcase
        if (@driver.find_element :accessibility_id, "The light is... " + colour.upcase)
          puts "#{colour} button confirmation message shows"
          (@driver.find_element :accessibility_id, "OK").click
        else
          puts "#{colour} button confirmation failed"
          return false
        end
      end
    end
    return true
  end

end