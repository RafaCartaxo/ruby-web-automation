#language: pt
@efetuar_login
Funcionalidade: Efetuar login

  @efetuar_login_valido
  Cenário: Efetuar login com dados válidos
    Dado que estou na url de login
    Quando quando preencho os campos de login com dados válidos
    Entao devo efetuar o login com sucesso

  @efetuar_login_invalido
  Cenário: Efetuar login com dados inválidos
    Dado que estou na url de login
    Quando quando preencho os campos de login com dados inválidos
    Entao não devo efetuar o login com sucesso