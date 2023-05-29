# frozen_string_literal: true

def caesar_cipher(str, shft_num)
  alpha_low = ('a'..'z').to_a
  alpha_up = ('A'..'Z').to_a
  encode_string(str, alpha_low, alpha_up, shft_num)
end

def encode_string(str, alpha_low, alpha_up, shft_num)
  str.chars.map do |el|
    if alpha_low.include?(el)
      encode_char(el, alpha_low, shft_num)
    elsif alpha_up.include?(el)
      encode_char(el, alpha_up, shft_num)
    else
      el
    end
  end.join
end

def encode_char(char, alpha, shft_num)
  new_val = alpha.index(char) + shft_num
  new_val -= 26 while new_val > 25
  alpha[new_val].to_s
end

p caesar_cipher('What a string!', 5)
