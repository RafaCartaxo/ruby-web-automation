Dado('que estou na url de login') do
  @url_login = visit '/'
end

Quando('quando preencho os campos de login com dados válidos') do
  login_form.valid_login
end

Entao('devo efetuar o login com sucesso') do
  expected_url = 'https://www.saucedemo.com/inventory.html'
  current_url = page.current_url
  expect(current_url).to eql(expected_url)
end

Quando('quando preencho os campos de login com dados inválidos') do
  login_form.invalid_login
end

Entao('não devo efetuar o login com sucesso') do
  expected_url = 'https://www.saucedemo.com/'
  current_url = page.current_url
  expect(current_url).to eql(expected_url)
  expect(login_form.check_invalid_login).to be_truthy
end
