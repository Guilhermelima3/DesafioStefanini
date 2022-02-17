Quando("realizar cadastro") do
  @cadastro = $web_pages.cadastro
  @cadastro.realizar_cadastro
end

Entao("deverá ser exibido as informações do novo usuário") do
  @cadastro = $web_pages.cadastro
  expect(@cadastro.registered_users).to have_name_user
  expect(@cadastro.registered_users).to have_email_user
end

Quando("realizar cadastro {string}") do |tipo_erro|
  @cadastro = $web_pages.cadastro
  @cadastro.realizar_cadastro_exception(tipo_erro)
end

Entao("deverá ser exibida a mensagem de alerta {string}") do |mensagem_alerta|
  expect(@cadastro.alert_message.text).to have_content mensagem_alerta
end

E("deletar o usuário cadastrado") do
  @cadastro = $web_pages.cadastro
  @cadastro.registered_users.excluir_usuario
end

Entao("não deverá apresentar a tabela de usuários cadastrados") do
  expect(@cadastro).to_not have_registered_users
end
