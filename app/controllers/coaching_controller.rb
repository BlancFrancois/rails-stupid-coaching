MAGIC_SENTENCE = "I am going to work right now!"

class CoachingController < ApplicationController
  def answer
    @question = params[:query]

    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message == MAGIC_SENTENCE
      return ""
    elsif your_message[-1] == "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if your_message.upcase == MAGIC_SENTENCE.upcase
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation! #{coach_answer(your_message)}"
    else
      return coach_answer(your_message)
    end
  end
end






