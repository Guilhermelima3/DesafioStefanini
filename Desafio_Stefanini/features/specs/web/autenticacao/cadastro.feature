# language: pt

Funcionalidade: Autenticação Cadastro
  COMO usuário do sistema.
  DESEJO realizar o cadastro de novos usuários.
  PARA QUE seja possível armazenar e gerenciar seus dados.

  Contexto: Acesso
    Dado que esteja na página de cadastro

    @cadastro
    Cenário: Cadastrar Usuário
      Quando realizar cadastro
      Entao deverá ser exibido as informações do novo usuário

    @excluir_cadastro
    Cenário: Deletar Usuário Cadastrado
      E realizar cadastro
      Quando deletar o usuário cadastrado
      Entao não deverá apresentar a tabela de usuários cadastrados

      @cadastro_exception
      Esquema do Cenário: Cadastro de Usuário Exceção
        Quando realizar cadastro "<tipo_erro>"
        Entao deverá ser exibida a mensagem de alerta "<mensagem_alerta>"

      Exemplos:
        | tipo_erro                             | mensagem_alerta                            |
        | Campo nome sem sobrenome              | Por favor, insira um nome completo.        |
        | Campo nome em branco                  | O campo Nome é obrigatório.                |
        | Campo email em branco                 | O campo E-mail é obrigatório.              |
        | Campo email incorreto                 | Por favor, insira um e-mail válido.        |
        | Campo senha em branco                 | O campo Senha é obrigatório.               |
        | Campo senha com menos de 8 caracteres | A senha deve conter ao menos 8 caracteres. |

