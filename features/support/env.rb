require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'
require_relative 'page_helper'

World(PageObjects)

def driver_init
  Capybara.configure do |config|
    if ("#{ENV['BROWSER']}" == "headless")
      options = Selenium::WebDriver::Chrome::Options.new
      options.add_argument('--headless')
      options.add_argument('--disable-gpu')
      config.default_driver = :selenium_chrome_headless
    else
      config.default_driver = :selenium_chrome
    end

    config.app_host = 'https://www.saucedemo.com'
    config.default_max_wait_time = 5
  end

  $driver = Capybara.current_session.driver.browser
end

