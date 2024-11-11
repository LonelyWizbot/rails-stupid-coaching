class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @first = "Great!"
    @second = "Silly question, get dressed and go to work!"
    @third = "I don't care, get dressed and go to work!"

    if params[:question].end_with?("?")
      @coach_answer = @second
    elsif params[:question] == "I am going to work"
      @coach_answer = @first
    else
      @coach_answer = @third
    end
  end
end
