require 'logger'
require 'yaml'
require 'faker'

Faker::Config.locale = 'pt-BR'

def get_element(screen)
  dir = "#{Dir.pwd}/features/elements/#{screen}_screen.yml"
  element_map = YAML.load_file(dir)
  @map = element_map[screen]
end

def faker_name
  Faker::Name.name
end

def faker_senha
  Faker::Internet.password
end
