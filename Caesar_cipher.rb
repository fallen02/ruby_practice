def get_position(_letter)
    letters = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]
    is_capital = false
    position = letters.index(_letter)
    if position == nil then
      position = letters.index(_letter.downcase)
      is_capital = true
    end
    return position, is_capital
end

def get_letter(_position, is_capital)
  letters = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]
    if is_capital then
      return letters[_position].upcase
    end
  return letters[_position]
end


def caesar_cipher(_string, _shift)
        new_string = ""
        _string.each_char do |str|
          position, is_capital = get_position(str)
          if position == nil
            new_string += str
           elsif position + _shift > 26
            new_string += get_letter(position + _shift - 26, is_capital)
          elsif position + _shift < 0
            new_string += get_letter(position + _shift + 26, is_capital)
            # new_string += get_letter(position + _shift)
          else
            new_string += get_letter(position + _shift, is_capital)
          end
        end
        puts new_string
end


caesar_cipher("What a string!", 5)
