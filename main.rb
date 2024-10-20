def caesar_cipher(text, num_shifts)
  lowercase = ("a".."z").to_a
  uppercase = ("A".."Z").to_a

  result = text.chars.map do |char|
    if lowercase.include?(char)
      lowercase[(lowercase.index(char) + num_shifts) % 26]
    elsif uppercase.include?(char)
      uppercase[(uppercase.index(char) + num_shifts) % 26]
    else
      char
    end
  end

  result.join
end

puts caesar_cipher("What a string!", 5)
