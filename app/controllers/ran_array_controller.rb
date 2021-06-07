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
    arrays = RanArray.find(params[:id]).number.sort.slice_when  do |prev, curr|
      curr != prev.next
    end
    ran_array = RanArray.new
    return_array = ran_array.range(arrays)

    @response = "El mayor rango del arreglo es: #{return_array}"
    @status = 200

    render json: @response, serializer: RanArrayController, status: @status
  end
end
