class ContratoController < ApplicationController

  before_filter :load_clientes, :only => [:new, :edit, :create, :update, :new_dependente]

  def index
    @contratos = Contrato.all(:conditions => ["deleted = ?", false], :order => 'codigo')
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
    @contrato = Contrato.find(params[:id])
  end

  def update
    @contrato = Contrato.find(params[:id])

    respond_to do |format|
      if @contrato.update_attributes(params[:contrato])
        format.html { redirect_to(contrato_index_path, :notice => 'contrato atualizado com sucesso') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

	def destroy
    @contrato = Contrato.find(params[:id])
    @contrato.deleted = true

    respond_to do |format|
      if @contrato.save
        format.js { render :nothing => true }
      end
    end
  end

	def new_dependente
		@cliente = Cliente.new

		render :layout => 'dialog'
	end

	def save_dependente
		contrato = Contrato.find(params[:contrato_id])
		contrato.dependentes << Cliente.find(params[:cliente][:id])

		respond_to do |format|
      if contrato.save
        format.html { redirect_to("/contrato/#{params[:contrato_id]}/edit", :notice => 'contrato atualizado com sucesso') }
      end
    end
	end
private
  def load_clientes
    @clientes = Cliente.all.collect {|c| [c.nome, c.id]}
  end

end

