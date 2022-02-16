module Web
  module Sections
    module Cadastro
      class RegisteredUsers < SitePrism::Section

        element :id_user, '#tdUserId1'
        element :name_user, '#tdUserName1'
        element :email_user, '#tdUserEmail1'
        element :remove_user, '#removeUser1'


        def excluir_usuario
          remove_user.click
        end

      end
    end
  end
end
