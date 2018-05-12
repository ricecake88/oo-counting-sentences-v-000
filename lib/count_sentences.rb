require 'pry'

class String

  def sentence?
   if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
   if self.end_with?("?")
     true
   else
     false
   end
  end

  def exclamation?
   if self.end_with?("!")
     true
   else
     false
   end
  end

  def count_sentences
    questionArray = self.split("?")
    binding.pry
    periodArray = self.split(".")
    exclamationArray = self.split("!")
    questionArray.length + periodArray + exclamationArray
  end
end

str = "This, well, is a sentence. This is too!! And so is this, I think? Woo...".new
puts str.count_sentences