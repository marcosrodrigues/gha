class ClienteController < ApplicationController
  def index
    @clientes = Cliente.all(:order => 'codigo')
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

  def edit
    @cliente = Cliente.find(params[:id])
  end

  def update
    @cliente = Cliente.find(params[:id])

    respond_to do |format|
      if @cliente.update_attributes(params[:cliente])
        format.html { redirect_to(cliente_index_path, :notice => 'cliente atualizado com sucesso') }
      else
        format.html { render :action => "edit" }
      end
    end
  end
end

