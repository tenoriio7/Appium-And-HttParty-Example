require 'rspec'
require "cucumber"
require "httparty"
require "httparty/request"
require "httparty/response/headers"
require "faker"
require "cpf_faker"
require "pry"
require "json-diff"
require "yaml"


$token_latam = nil
$codigo_ativacao = nil
