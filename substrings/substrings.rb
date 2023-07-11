dictionary = ["up", "down", "left", "right", "at", "about", "the", "stuff", "phone", "phonetics"]

def substrings(query, dictionary)
    query = query.downcase.split(" ")
    substrings = Hash.new(0)
    dictionary.each do |substring|
        query.each do |word|
            if substring.include?(word.tr(".,", ""))
                substrings[substring] += 1
            end
        end
    end
    puts substrings
end

substrings("The phoney pickup truck driver left earlier for some stuff.", dictionary)