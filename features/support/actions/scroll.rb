require 'logger'

def move_to(el)
  wait_for_display(el)
  elem =  $driver.find_element(:"#{el['type']}", el['value'])
  $driver.action.move_to(elem).perform
  $logger.info('Moveu pra esquerda até encontrar o elemento: ' + el['value'] + ' usando o metodo de busca ' + el['type'])
end


def move_to_left(el)
  #     elem =  $driver.find_element(:"#{el['type']}", el['value'])
  #     $driver.action.move_to(elem, 100).perform
  # end

  # draggable = $driver.find_element(:"#{el['type']}", el['value'])
  # droppable = $driver.find_element(:"#{el2['type']}", el2['value'])
  # driver.action
  #       .drag_and_drop(draggable, droppable)
  #       .perform
  # elem =  $driver.find_element(:"#{el['type']}", el['value'])
  # elem.send_keys(elem, :left).perform
  # $driver.action.key_left.perform

  elem =  $driver.find_element(:"#{el['type']}", el['value'])
  scroll_origin = Selenium::WebDriver::WheelActions::ScrollOrigin.element(elem, 0, -50)
  $driver.action
         .scroll_from(scroll_origin, 200, 0)
         .perform
end