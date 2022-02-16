Dado('que esteja na página de cadastro') do
  @cadastro = $web_pages.cadastro
  @cadastro.load
end
