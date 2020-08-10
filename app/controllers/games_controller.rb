class GamesController < ApplicationController
  def new
@letters = []
10.times { @letters.push(('a'..'z').to_a.sample) }

  end

  def score
    @letters = params[:letters].split(" ")
    @my_answer = params[:question]
    @check_array = []
    @my_answer_array_letter = @my_answer.split('')
    @letters.each do |letter|
      if @my_answer_array_letter.include?(letter)
        @check_array << letter
      end
    end
    if @my_answer != @check_array
      @results = "Sorry but #{@my_answer} can't be built out of #{@letters}"
    elsif condition

    else
      @results ="Congratulation! #{@my_answer}is a valid English word!"
    end
  end
end

