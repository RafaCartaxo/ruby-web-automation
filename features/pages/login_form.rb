class LoginFormPage
  def initialize
    get_element 'login_form'
  end

  def valid_login
    set(@map['field_username'], 'standard_user')
    set(@map['field_password'], 'secret_sauce')
    click(@map['button_login'])
    sleep(2)
  end

  def invalid_login
    set(@map['field_username'], faker_name)
    set(@map['field_password'], faker_senha)
    click(@map['button_login'])
    sleep(2)
  end

  def check_invalid_login
    wait_for_text_to_exist('Epic sadface: Username and password do not match any user in this service')
  end
end
