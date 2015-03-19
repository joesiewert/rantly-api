class RantsController < ApplicationController

  def index
    if params[:search]
      render json: Rant.where('title LIKE ? OR body LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
    else
      render json: Rant.all
    end
  end

  def create
    rant = Rant.new(rant_params)

    if rant.save
      render json: rant
    end
  end

  def update
    rant = Rant.find(params[:id])

    if rant.update(rant_params)
      render json: rant
    end
  end

  def destroy
    rant = Rant.find(params[:id])

    if rant.destroy
      head :no_content
    end
  end

  private
    def rant_params
      params.require(:rant).permit(:title, :body)
    end

end
