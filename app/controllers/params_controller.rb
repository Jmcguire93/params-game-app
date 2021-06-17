class ParamsController < ApplicationController
  def display_name
    input_value = params["show_name"]
    if input_value[0].downcase == "a"
      render json: "Hey #{input_value}, your name starts with the first letter of the alphabet!"
    else
      render json: {show_name: "Your name is #{input_value}."}
    end
  end
end
