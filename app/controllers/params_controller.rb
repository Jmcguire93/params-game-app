class ParamsController < ApplicationController
  def display_name
    input_value = params["show_name"]
    render json: {show_name: "Your name is #{input_value}."}
  end
end
