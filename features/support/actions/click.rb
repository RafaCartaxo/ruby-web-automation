require 'logger'

def click(el)
  wait_for_display(el)
  $driver.find_element(:"#{el['type']}", el['value']).click
  $logger.info('Clicou no elemento ' + el['value'] + ' usando o metodo de busca ' + el['type'])
end

def click_index(el, index)
  wait_for_display(el)
  $driver.find_elements(:"#{el['type']}", el['value'])[index].click
  $logger.info("Clicou no campo no indice #{index} do elemento #{el['value']} usando o tipo de busca #{el['tipo_busca']}")
end

def click_hierarquia(el, el2)
  element = $driver.find_element(:"#{el['type']}", el['value'])
  element.find_element(:"#{el2['type']}", el2['value']).click
  $logger.info(" clicou no index #{index} com #{el} => #{el2} usando o tipo de busca #{el['tipo_busca']} e #{el2['tipo_busca']}")
end

def press_enter
  $driver.action.send_keys("\n").perform
end

def click_text(text)
  wait.until { text_exists? text }.click
  $logger.info("Aguardou a existência do texto  #{text} e clicou")
end

def back_driver
  $driver.switch_to.window( $driver.window_handles.last )
end

def click_tab
  $driver.action.send_keys("\t").perform
end

def click_esc
  $driver.action.send_keys("\e").perform
end