class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "great, FINALLY!"
    elsif @question.strip.split("").last == "?"
      @answer = "Stupid question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
