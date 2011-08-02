class LixeiraController < ApplicationController
  def index
    @clientes = Cliente.all(:conditions => ["deleted = ?", true], :order => 'codigo')
    @contratos = Contrato.all(:conditions => ["deleted = ?", true], :order => 'codigo')
    @tipos_de_servicos = TipoDeServico.all(:conditions => ["deleted = ?", true], :order => 'codigo')    
    @servicos = Servico.all(:conditions => ["deleted = ?", true], :order => 'codigo')        
  end

  def restaurar_cliente
    @cliente = Cliente.find(params[:id])
    @cliente.deleted = false

    respond_to do |format|
      if @cliente.save
        format.js { render :nothing => true }
      end
    end
  end

  def restaurar_contrato
    @contrato = Contrato.find(params[:id])
    @contrato.deleted = false

    respond_to do |format|
      if @contrato.save
        format.js { render :nothing => true }
      end
    end
  end
  
  def restaurar_tipo_de_servico
    @tipo_de_servico = TipoDeServico.find(params[:id])
    @tipo_de_servico.deleted = false

    respond_to do |format|
      if @tipo_de_servico.save
        format.js { render :nothing => true }
      end
    end
  end
  
  def restaurar_servico
    @servico = Servico.find(params[:id])
    @servico.deleted = false

    respond_to do |format|
      if @servico.save
        format.js { render :nothing => true }
      end
    end
  end
end

