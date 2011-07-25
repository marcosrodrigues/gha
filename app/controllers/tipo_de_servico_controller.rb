class TipoDeServicoController < ApplicationController
  def index
    @tipos_de_servicos = TipoDeServico.all(:order => 'codigo')
  end
  
  def new
    @tipo_de_servico = TipoDeServico.new
  end
  
  def create
    @tipo_de_servico = TipoDeServico.new(params[:tipo_de_servico])

    respond_to do |format|
      if @tipo_de_servico.save
        format.html { redirect_to(tipo_de_servico_index_path, :notice => 'tipo de serviço cadastrado com sucesso') }
      else
        format.html { render :action => "new" }
      end
    end
  end  
  
  def edit
    @tipo_de_servico = TipoDeServico.find(params[:id])
  end

  def update
    @tipo_de_servico = TipoDeServico.find(params[:id])

    respond_to do |format|
      if @tipo_de_servico.update_attributes(params[:tipo_de_servico])
        format.html { redirect_to(tipo_de_servico_index_path, :notice => 'tipo de serviço atualizado com sucesso') }
      else
        format.html { render :action => "edit" }
      end
    end
  end
 
end
