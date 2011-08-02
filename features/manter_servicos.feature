# language: pt
Funcionalidade: Manter Serviços
  Para cadastrar e gerenciar os Serviços
  Como um administador
  Eu quero manter as informações dos meus Serviços atualizadas

  Cenário: Cadastrar servico
    Dado que eu tenho um tipo de servico chamado "Plano"
    Quando eu vou na página serviços
    E eu clico em "add"
    E eu digito "0001" em "servico[codigo]"
    E eu digito "Plano Básico" em "servico[nome]"
    E eu seleciono "Plano" em "servico[tipo_de_servico_id]"
    E eu pressiono "Salvar"
    Então eu devo ver "servico cadastrado com sucesso"

