class ObrasController < ApplicationController

  def index
    @obras = Obra.all
  end


  def show
    @obra = Obra.find(params[:id])   
  end

  def new
    @obra = Obra.new
  end

  def edit
    @obra = Obra.find(params[:id])
  end

  def create
    @obra = Obra.new(obra_params)
    
    if @obra.save
    redirect_to @obra
    else 
       render 'new'
  end
 end

  def update
    @obra = Obra.find(params[:id])
    
    if @obra.update(obra_params)
    redirect_to @obra
    else 
       render 'edit'
  end
  end

  def destroy
    @obra = Obra.find(params[:id])
    @obra.destroy

    redirect_to obras_path
  end

private
  def obra_params
    params.require(:obra).permit(:titulo, :autor)

  end

end
