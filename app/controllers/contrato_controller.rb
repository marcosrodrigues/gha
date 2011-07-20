class ContratoController < ApplicationController

  before_filter :load_clientes, :only => [:new, :edit]

  def index
    @contratos = Contrato.all(:order => 'codigo')
  end

  def new
    @contrato = Contrato.new
  end

  def create
    @contrato = Contrato.new(params[:contrato])

    respond_to do |format|
      if @contrato.save
        format.html { redirect_to(contrato_index_path, :notice => 'contrato cadastrado com sucesso') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def edit

  end

  def update

  end

private
  def load_clientes
    @clientes = Cliente.all.collect {|c| [c.nome, c.id]}
  end

end

