require 'logger'

def text_exists?(text)
  $logger.info("Verificando se existe o texto #{text}")
  $driver.find_elements(:xpath, "//*[text()='#{text}']").count > 0
end

def size_window
  $driver.execute_script("document.body.style.zoom='70%'")
end