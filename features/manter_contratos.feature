# language: pt
Funcionalidade: Manter Contratos
  Para cadastrar e gerenciar os contratos dos clientes
  Como um administador
  Eu quero manter as informações dos contratos atualizados

  Cenário: Cadastrar contrato
    Dado que eu tenho um cliente chamado "Marcos Rodrigues"
    Quando eu vou na página de criação de contrato
    Quando eu digito "000001" em "contrato[codigo]"
    Quando eu seleciono "Marcos Rodrigues" em "contrato[cliente_id]"
    Quando eu digito "01/07/2011" em "contrato[data]"
    Quando eu pressiono "Salvar"
    Então eu devo ver "contrato cadastrado com sucesso"

