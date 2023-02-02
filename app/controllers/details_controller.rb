class DetailsController < ApplicationController
  def index
    @details = Detail.all
  end
  def show
    @detail= Detail.find(params[:id])
  end
  def new
    @detail = Detail.new
  end

  def create
    @detail = Detail.new(detail_params)

    if @detail.save
      redirect_to @detail
    else
      render :new, status: :unprocessable_entity
    end
  end
  

  def edit
    @detail = Detail.find(params[:id])
  end

  def update
    
    @detail = Detail.find(params[:id])

    if @detail.update(detail_params)
      redirect_to @detail
    else
      render :edit, status: :unprocessable_entity
    end
  end

def destroy
  @detail = Detail.find(params[:id])
  @detail.destroy

  redirect_to root_path, status: :see_other
end


  private
  
  def detail_params
    params.require(:detail).permit(:first_name, :last_name, :age, :height, :complex, :father_name, :mother_name, :address)
  end
end
