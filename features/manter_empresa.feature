# language: pt
Funcionalidade: Manter Empresa
  Para cadastrar e gerenciar empresa
  Como um usuário
  Eu quero cadastrar e gerencia minha empresa dentro do sistema

  Cenário: Cadastrar Empresa
    Quando eu vou na página de login
    Quando eu clico em "cadastrar empresa"
    Então eu devo ver "Cadastro de Empresa"
    Quando eu digito "Empresa Teste" em "empresa[razao_social]"
    Quando eu digito "Emp. Teste" em "empresa[nome_fantasia]"
    Quando eu pressiono "Salvar Empresa"
    Então eu devo ver "empresa cadastrada com sucesso"

