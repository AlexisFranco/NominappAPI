class RanArrayController < ApplicationController
  def index
    render json: RanArray.all, status: 200
  end

  def create
    qty = params[:array_length].to_i

    if qty >= 10 && qty <= 30
      array = (0..30).to_a.sample(qty)
      new_array = RanArray.create! :number => array
      
      response = new_array
      status = 200
    else
      response = { message: 'El número de elementos debe estar entre 10 y 30' }
      status = 400
    end

    render json: response, status: status
  end

  def show
    array = RanArray.find(params[:id])
    arrays = array.number.sort.slice_when  do |prev, curr|
      curr != prev.next
    end

    ran_array = RanArray.new

    render json: ran_array.range(arrays), status: 200
  end
end
