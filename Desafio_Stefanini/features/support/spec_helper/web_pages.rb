Dir[File.join(File.dirname(__FILE__), 'page_objects/web/pages/*.rb')]
  .sort.each { |file| require file }

module Web
  module Pages
    class WebPages
      class << self
        def cadastro
          Web::Pages::Autenticacao::Cadastro.new
        end
      end
    end
  end
end
