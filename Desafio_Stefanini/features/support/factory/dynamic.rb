require 'faker'
require 'cpf_faker'

module Factory
  class Dynamic

    def self.with_error(data, tipo_erro)
      case tipo_erro
      when 'Campo nome em branco'
        data[:name] = ''
      when 'Campo nome sem sobrenome'
        data[:name] = 'Nome'
      when 'Campo email em branco'
        data[:email] = ''
      when 'Campo email incorreto'
        data[:email] = 'ghj12s@'
      when 'Campo senha em branco'
        data[:senha] = ''
      when 'Campo senha com menos de 8 caracteres'
        data[:senha] = 'senha'
      end
      data
    end

    def self.user(tipo_erro)
      @user = {
        :name => "#{Faker::Name.name}",
        :email => "#{Faker::Internet.email(domain: 'example')}",
        :senha => 'Senha@123'
      }

      @user = Dynamic.with_error(@user, tipo_erro) if tipo_erro

      @user
    end
  end
end
