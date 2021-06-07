class RanArrayController < ApplicationController
  def index
  end

  def create
    qty = params[:array_length].to_i

    if qty >= 10 && qty <= 30
      array = (0..30).to_a.sample(qty)
      new_array = RanArray.create! :number => array
      @response = new_array
      @status = 200
    else
      @response = { message: 'El número de elementos debe estar entre 10 y 30' }
      @status = 400
    end
    render json: @response, serializer: RanArrayController, status: @status
  end

  def show
  end
end
