def caesar_cipher(string, shift_factor)

  alphabet_lower = ("a".."z").to_a
  alphabet_upper = ("A".."Z").to_a
  new_string = ""

  string.split("").each do |element|
    if alphabet_lower.include?(element)
      new_value = alphabet_lower.index(element) + shift_factor
      new_value -= 26 while new_value > 25
      new_string += alphabet_lower[new_value].to_s
    elsif alphabet_upper.include?(element)
      new_value = alphabet_upper.index(element) + shift_factor
      new_value -= 26 while new_value > 25
      new_string += alphabet_upper[new_value].to_s
    else
      new_string += element
    end
  end

  new_string
end

p caesar_cipher("What a string!", 5)