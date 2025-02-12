require 'logger'

def set(el, text)
  return unless el.is_a?(Hash) && el.key?('type') && el.key?('value')

  wait_for_display(el)
  element = $driver.find_element(:"#{el['type']}", el['value'])

  if el['type'] == 'input' || element.tag_name.downcase == 'input'
    element.click
    element.clear
    element.send_keys(text)
    $logger.info('Setou informações no elemento ' + el['value'] + ' usando o tipo de busca ' + el['type'])
  else
    $logger.warn('Elemento ' + el['value'] + ' não é um campo de entrada. Não foi possível definir texto.')
  end
end

def set_index(el, index, text)
  wait_for_display(el)
  $driver.find_elements(:"#{el['type']}", el['value'])[index].send_keys text
  $logger.info("Setou no campo no indice #{index} do elemento #{el['value']} usando o tipo de busca #{el['tipo_busca']}")
end

def clear(el)
  wait_for_display(el)
  element = $driver.find_element(:"#{el['type']}", el['value'])
  element.clear
  element.send_keys [:control, 'a'], :backspace
  $logger.info("Limpou o campo #{el}")
end