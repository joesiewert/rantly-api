class RantsController < ApplicationController

  def index
    if params[:search]
      search = params[:search].downcase
      render json: Rant.where('lower(title) LIKE ? OR lower(body) LIKE ?', "%#{search}%", "%#{search}%")
    else
      render json: Rant.all
    end
  end

  def create
    rant = Rant.new(rant_params)

    if rant.save
      render json: rant
    else
      render json: rant.errors, status: :unprocessable_entity
    end
  end

  def update
    rant = Rant.find(params[:id])

    if rant.update(rant_params)
      render json: rant
    else
      render json: rant.errors, status: :unprocessable_entity
    end
  end

  def destroy
    rant = Rant.find(params[:id])

    if rant.destroy
      head :no_content
    else
      render json: rant.errors, status: :unprocessable_entity
    end
  end

  private
    def rant_params
      params.require(:rant).permit(:title, :body)
    end

end
