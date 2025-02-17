require 'logger'

def wait
  Selenium::WebDriver::Wait.new :timeout => 25
end

def wait_for_display(el)
  return unless el && el.key?('value')
  $logger.info("Aguardando o elemento ficar visível #{el['value']} utilizando o tipo de busca #{el['type']}")
  wait.until { $driver.find_element(:"#{el['type']}", el['value']).displayed? }
end

def wait_for_display_index(el, index)
  $logger.info("Aguardando o elemento ficar visível #{el['value']} utilizando o tipo de busca #{el['type']}")
  wait.until { $driver.find_element(:"#{el['type']}", el['value'], [index]).displayed? }
end

def wait_for_text_to_exist(text)
  wait.until { text_exists? text }
  $logger.info("Aguardou a existência do texto #{text}")
end

def element_not_exists(el)
  $logger.info("Verificando se não existe o elemento #{el['value']} usando o tipo de busca #{el['type']}")
  while $driver.find_element(:"#{el['type']}", el['value']).count > 0 do
    sleep(0.500)
  end
  $logger.info("O elemento #{el['value']} usando o tipo de busca #{el['type']} não existe mais")
end