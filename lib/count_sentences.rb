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
    questionArray = self.split(/[!.?]/)
    questionArray.reject!(&:empty?)
    questionArray.length
  end
end

str = String.new
str = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
puts str.count_sentences