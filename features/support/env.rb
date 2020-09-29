
require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require 'selenium-webdriver'
require 'pry'
require 'rspec'
require 'site_prism'

# Seta timeout para wait
$wait = Selenium::WebDriver::Wait.new :timeout => 30

# Configurando o driver Capybara
Capybara.configure do |config|
    config.default_driver = :selenium_chrome #roda no navegador
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
end

# Time padrão na execução
Capybara.default_max_wait_time = 60

# Maximizar a tela ao iniciar os testes
Capybara.page.driver.browser.manage.window.maximize

# Url do site
Capybara.app_host = "https://www.fleury.com.br/"