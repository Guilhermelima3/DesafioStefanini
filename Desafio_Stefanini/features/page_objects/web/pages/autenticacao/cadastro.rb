Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

module Web
  module Pages
    module Autenticacao
      class Cadastro < SitePrism::Page
        set_url '/'

        element :name, '#name'
        element :email, '#email'
        element :password, 'input[type*=password]'
        element :btn_register, 'button#register'
        element :alert_message, '.error'

        section :registered_users, Web::Sections::Cadastro::RegisteredUsers, 'div.register-form.expanded > table'

        def generate_user(tipo_erro=nil)
          Factory::Dynamic.user(tipo_erro)
        end

        def realizar_cadastro_static
          @user = Factory::Static.static_data('register_user')
          name.gset @user[:name]
          email.set @user[:email]
          password.set @user[:senha]
          btn_register.click

          @user
        end

        def realizar_cadastro
          @user = generate_user
          name.set @user[:name]
          email.set @user[:email]
          password.set @user[:senha]
          btn_register.click

        end

        def realizar_cadastro_exception(tipo_erro)
          @user = generate_user(tipo_erro)

          name.set @user[:name]
          email.set @user[:email]
          password.set @user[:senha]
          btn_register.click

          @user
        end

      end
    end
  end
end

