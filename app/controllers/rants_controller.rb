class RantsController < ApplicationController

  def index
    render json: Rant.all
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

  private
    def rant_params
      params.require(:rant).permit(:title, :body)
    end

end
