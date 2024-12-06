require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [ 1400, 1400 ] do |options|
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-dev-shm-usage")
    options.add_argument("--disable-gpu")
  end

  def accept_alert
    page.driver.browser.switch_to.alert.accept
  rescue Selenium::WebDriver::Error::NoSuchAlertError
    # Ignora se não houver alerta.
  end
end
