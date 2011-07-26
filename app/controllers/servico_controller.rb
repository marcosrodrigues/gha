class ServicoController < ApplicationController
  before_filter :load_tipos_de_servicos, :only => [:new, :edit, :create, :update]

  def index
    @servicos = Servico.all(:order => 'codigo')
  end

  def new
    @servico = Servico.new
  end

  def create
    @servico = Servico.new(params[:servico])

    respond_to do |format|
      if @servico.save
        format.html { redirect_to(servico_index_path, :notice => 'servico cadastrado com sucesso') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def edit
    @servico = Servico.find(params[:id])
  end

  def update
    @servico = Servico.find(params[:id])

    respond_to do |format|
      if @servico.update_attributes(params[:servico])
        format.html { redirect_to(servico_index_path, :notice => 'servico atualizado com sucesso') }
      else
        format.html { render :action => "edit" }
      end
    end
  end
private
  def load_tipos_de_servicos
    @tipos_de_servicos = TipoDeServico.all.collect {|c| [c.nome, c.id]}
  end

end

