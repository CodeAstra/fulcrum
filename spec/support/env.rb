Capybara.register_driver :selenium do |app|
  require 'selenium/webdriver'
  Selenium::WebDriver::Firefox::Binary.path = ENV['FIREFOX_BINARY_PATH'] || Selenium::WebDriver::Firefox::Binary.path
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end