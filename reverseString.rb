@sentence = "This is just Another String For You to Test With"
@sentence_array = @sentence.chars
@sentence_array_index = @sentence_array.length-1

def reverse_string
  @reverse_sentence = ''

  while @sentence_array_index >=0
    @reverse_sentence << @sentence_array[@sentence_array_index]
    @sentence_array_index -= 1
  end
  puts @reverse_sentence

end

def capitalize_string
  @capital_sentence = @reverse_sentence.split("").each_with_index do |word, index|
    if index.even?
      word.capitalize!
    end
  end
  puts @capital_sentence.join("")  
end

reverse_string
capitalize_string