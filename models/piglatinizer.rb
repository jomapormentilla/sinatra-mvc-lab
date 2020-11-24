class PigLatinizer
    def piglatinize( string )
        string_arr = string.split(" ")

        arr = []
        string_arr.each do |word|
            if word.split("")[0].match(/^[^aeiouAEIOU]/)
                arr << words_starting_with_consonants( word )
            else
                arr << words_starting_with_vowels( word )
            end
        end
        arr.join(" ")
    end

    def words_starting_with_consonants( word )
        first = word.split(/[aeiou]/).shift
        buffer = first.size

        new_word = word.split("")[buffer..-1]
        new_word << first
        new_word << ["ay"]
        new_word.join("")
    end

    def words_starting_with_vowels( word )
        word + "way"
    end
end