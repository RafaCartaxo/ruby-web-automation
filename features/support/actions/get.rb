require 'logger'

def get_text(el)
  wait_for_display(el)
  $logger.info('Está buscando o texto do elemento ' + el['value'] + ' usando o tipo de busca ' + el['type'])
  $driver.find_element(:"#{el['type']}", el['value']).text
end

def get_text_hierarquia(el, el2)
  wait_for_display(el)
  element = $driver.find_element(:"#{el['type']}", el['value'])
  element.find_element(:"#{el2['type']}", el2['value']).text
  $logger.info('Está buscando o texto do elemento ' + el2['value'] + ' usando o tipo de busca ' + el2['type'])
end