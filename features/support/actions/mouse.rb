require 'logger'

def pairar_mouse(el)
  hoverable = $driver.find_element(:"#{el['type']}", el['value'])
  $driver.action
         .move_to(hoverable)
         .perform
end

def pairar_mouse_index(el, index)
  hoverable = $driver.find_element(:"#{el['type']}", el['value'])[index]
  $driver.action
         .move_to(hoverable)
         .perform
end