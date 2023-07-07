def caesar_cipher(string, offset)
    split_string = string.split("")
    new_string = split_string.map do |letter|
        if letter.match(/[a-zA-Z]/)
            if letter == letter.upcase
                letter = letter.ord + offset
                if letter > 90
                    letter = letter - 26
                end
            else
                letter = letter.ord + offset
                if letter > 122
                    letter = letter - 26
                end
            end
            letter = letter.chr
        else
            letter = letter
        end
    end
    puts new_string.join("")
end

caesar_cipher("My name is Justin and I have two children.", 6)