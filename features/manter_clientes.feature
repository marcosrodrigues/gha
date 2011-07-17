# language: pt
Funcionalidade: Manter Clientes
  Para cadastrar e gerenciar meus clientes
  Como um administador
  Eu quero manter as informações dos meu clientes atualizados

  Cenário: Cadastrar cliente
    Quando eu vou na página clientes
    Quando eu clico em "add-link"
    Quando eu digito "000001" em "cliente[codigo]"
    Quando eu digito "Marcos" em "cliente[nome]"
    Quando eu seleciono "Masculino" em "cliente[sexo]"
    Quando eu pressiono "Salvar"
    Então eu devo ver "cliente cadastrado com sucesso"

