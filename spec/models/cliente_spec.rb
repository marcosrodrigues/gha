# encoding: utf-8
require 'spec_helper'

describe Cliente do
  it "o código deve ser requerido" do
    cliente = Cliente.new(:nome => "teste", :sexo => "Masculino")

    cliente.should_not be_valid
  end
end

