class EmpresaController < ApplicationController
  def new
    @empresa = Empresa.new
  end

  def create
    @empresa = Empresa.new(params[:empresa])

    respond_to do |format|
      if @empresa.save
        format.html { redirect_to(root_path, :notice => 'empresa cadastrada com sucesso') }
      else
        format.html { render :action => "new" }
      end
    end
  end
end

