require_relative '../helpers/helper'



Dado("que eu envie os parâmetros corretos para o endpoint de cartoes") do
    @validator=Helper.new
        @get_clientes = HTTParty.get 'http://10.31.91.117:94/cartoes/detalhes',
          :body => nil,
          :headers => {
              "Content-Type" => 'application/json',
              "token_latam" =>   $token_latam,
              "session_id" =>   "1",
              "transaction_id" =>   "1",
              "itau-chave" =>   "bc59d97e-3be3-4fa4-b2e1-de299f18ee99"
          } 
end

Entao("devo validar o retorno do endpoint de cartoes") do
    expect(@get_clientes.code).to eq 200
    json = JSON.parse(@get_clientes.to_s)
    json = json["data"]
   
    @validator.validation_of_type json[0]["id_cartao"] , String ,"id_cartao"
    @validator.validation_of_type json[0]["num_cartao"] , String ,"num_cartao"
    @validator.validation_of_type json[0]["nome_cartao"] , String ,"nome_cartao"
    @validator.validation_of_type json[0]["nome_cliente"] , String ,"nome_cliente"
    @validator.validation_of_type json[0]["bandeira_cartao"] , String ,"bandeira_cartao"
    @validator.validation_of_type json[0]["tipo_cartao"] , String ,"tipo_cartao"
    @validator.validation_of_type  json[0]["indicador_titularidade"] , String ,"indicador_titularidade"
    @validator.validation_of_type  json[0]["status_cartao"] , String ,"status_cartao"
    @validator.validation_of_type  json[0]["detalhes_cartao"]["data_fechamento_fatura"] , String ,"data_fechamento_fatura"
    @validator.validation_of_type  json[0]["detalhes_cartao"]["data_vencimento_fatura"] , String ,"data_vencimento_fatura"
    @validator.validation_of_type  json[0]["detalhes_cartao"]["ano_validade"] , String ,"ano_validade"
    @validator.validation_of_type  json[0]["detalhes_cartao"]["mes_validade"] , String ,"mes_validade"
    @validator.validation_of_type  json[0]["detalhes_cartao"]["variante_cartao"] , String ,"variante_cartao"
    @validator.validation_of_type  json[0]["detalhes_cartao"]["saldo_ultima_fatura"][0]["codigo_moeda"], String ,"codigo_moeda"
    @validator.validation_of_type  json[0]["detalhes_cartao"]["saldo_ultima_fatura"][0]["simbolo_moeda"], String ,"simbolo_moeda"
    @validator.validation_of_type  json[0]["detalhes_cartao"]["saldo_ultima_fatura"][0]["sinal"], String ,"sinal"
    @validator.validation_of_type  json[0]["detalhes_cartao"]["saldo_ultima_fatura"][0]["valor"], String ,"valor"
   
end



Dado("que eu envie os parâmetros corretos para o endpoint de lancamentos") do
    @body = {
        "data":{
            "id_cartao": "59270d8583b606f1893df45f",
        }
    }.to_json
    @get_clientes = HTTParty.get 'http://10.31.91.117//cartoes/59270d8583b606f1893df45f/lancamentos',
      :body => nil,
      :headers => {
          "Content-Type" => 'application/json',
          "token_latam" =>   "rnk6vw6inw78s53h",
          "session_id" =>   "1",
          "transaction_id" =>   "1"
      } 
end
  
Entao("devo validar o retorno do endpoint de lancamentos") do
    expect(@get_clientes.code).to eq 200
    json = JSON.parse(@get_clientes.to_s)
    json = json["data"]
    @validator=Helper.new
    @validator.validation_of_type json[0]["status_compra"] , String ,"status_compra"
    @validator.validation_of_type json[0]["data_registro"] , String ,"data_registro"
    @validator.validation_of_type json[0]["valor_compra"]["codigo_moeda"] , String ,"codigo_moeda"
    @validator.validation_of_type json[0]["valor_compra"]["simbolo_moeda"] , String ,"simbolo_moeda"
    @validator.validation_of_type json[0]["valor_compra"]["sinal"] , String ,"sinal"
    @validator.validation_of_type json[0]["valor_compra"]["valor"] , Integer ,"valor"
    @validator.validation_of_type json[0]["nome_estabelecimento"] , String ,"nome_estabelecimento"
    @validator.validation_of_type json[0]["tipo_operacao"] , String ,"tipo_operacao"
    @validator.validation_of_type json[0]["parcela_atual"] , Integer ,"parcela_atual"
    @validator.validation_of_type json[0]["quantidade_parcelas"] , Integer ,"quantidade_parcelas"
    @validator.validation_of_type json[0]["pais"] , Integer ,"pais"
    @validator.validation_of_type json[0]["pais_nome"] , String ,"pais_nome"
    @validator.validation_of_type json[0]["cidade"] , String ,"cidade"
    @validator.validation_of_type json[0]["agrupamento"] , String ,"agrupamento"
    @validator.validation_of_type json[0]["num_conta"] , String ,"num_conta"
    @validator.validation_of_type json[0]["nome_portador"] , String ,"nome_portador"
    @validator.validation_of_type json[0]["num_referencia_autorizacao"] , String ,"num_referencia_autorizacao"
    @validator.validation_of_type json[0]["descricao_estabelecimento"] , String ,"descricao_estabelecimento"
    @validator.validation_of_type json[0]["valor_transacao_moeda_original"]["codigo_moeda"] , String ,"codigo_moeda"
    @validator.validation_of_type json[0]["valor_transacao_moeda_original"]["simbolo_moeda"] , String ,"simbolo_moeda"
    @validator.validation_of_type json[0]["valor_transacao_moeda_original"]["sinal"] , String ,"sinal"
    @validator.validation_of_type json[0]["valor_transacao_moeda_original"]["valor"] , Integer ,"valor"
    @validator.validation_of_type json[0]["valor_transacao_moeda_local"]["codigo_moeda"] , String ,"codigo_moeda"
    @validator.validation_of_type json[0]["valor_transacao_moeda_local"]["simbolo_moeda"] , String ,"simbolo_moeda"
    @validator.validation_of_type json[0]["valor_transacao_moeda_local"]["sinal"] , String ,"sinal"
    @validator.validation_of_type json[0]["valor_transacao_moeda_local"]["valor"] , Integer ,"valor"
    @validator.validation_of_type json[0]["tipo_pagamento"] , String ,"tipo_pagamento"
    @validator.validation_of_type json[0]["data_processamento"] , String ,"data_processamento"
    @validator.validation_of_type json[0]["id_tecnologia"] , String ,"id_tecnologia"
    @validator.validation_of_type json[0]["plano_sequencia"] , String ,"plano_sequencia"
    @validator.validation_of_type json[0]["indicador_transacao"] , String ,"indicador_transacao"
    @validator.validation_of_type json[0]["indicador_parcelado"] , TrueClass ,"indicador_parcelado"
    @validator.validation_of_type json[0]["indicador_titularidade"] , String ,"indicador_titularidade"
    @validator.validation_of_type json[0]["periodo"] , String ,"periodo"
end