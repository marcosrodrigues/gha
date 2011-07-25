# language: pt
Funcionalidade: Manter Tipos de Serviços
  Para cadastrar e gerenciar os Tipos de Serviços
  Como um administador
  Eu quero manter as informações dos meus Tipos de Serviços atualizadas

  Cenário: Cadastrar tipo_de_servico
    Quando eu vou na página tipos de serviços
    E eu clico em "add"
    E eu digito "001" em "tipo_de_servico[codigo]"
    E eu digito "Plano" em "tipo_de_servico[nome]"
    E eu pressiono "Salvar"
    Então eu devo ver "tipo de serviço cadastrado com sucesso"

