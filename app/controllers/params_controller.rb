class ParamsController < ApplicationController
  def display_name
    input_value = params["show_name"]
    if input_value.downcase[0] == "a"
      render json: "Hey #{input_value}, your name starts with the first letter of the alphabet!"
    else
      render json: {show_name: "Your name is #{input_value}."}
    end
  end

  def guess
    winning_number = 32
    input_guess = params["the_users_guess"].to_i
    if input_guess > winning_number 
      output_message = "Pick lower!"
    elsif input_guess < winning_number
      output_message = "Pick higher!"
    else
      output_message = "You win!"
    end
    render json: {message: output_message}
  end

  def segment_params
    input_value = params["this_is_a_key"]
    render json: {message: "The url segment is #{input_value}"}
  end

  # def body_params
  #   winning_number = 33
  #   input_value = params["the_users_guess"].to_i 
  #   if input_guess > winning_number 
  #     output_message = "Pick lower!"
  #   elsif input_guess < winning_number
  #     output_message = "Pick higher!"
  #   else
  #     output_message = "You win!"
  #   end
  #   render json: {message: output_message}
  # end
end
