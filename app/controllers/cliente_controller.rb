class ClienteController < ApplicationController
  def index
    @empresas = Empresa.all
  end

  def new
    @cliente = Cliente.new
  end

  def create
    @cliente = Cliente.new(params[:cliente])

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to(cliente_index_path, :notice => 'cliente cadastrado com sucesso') }
      else
        format.html { render :action => "new" }
      end
    end
  end

end

