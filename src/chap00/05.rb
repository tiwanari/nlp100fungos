# n-gram は出現頻度ではない？？？
def n_gram(str, n, dict={})
    for i in 0...str.size-(n-1) do
        if dict.include?(str[i, n])
            dict[str[i, n]] += 1
        else
            dict[str[i, n]] = 1
        end
    end
    return dict
end

# str = "paraparaparadise"
str = "I am an NLPer"
splited_str = str.split(/\s|,\s*|;\s*|\.\s*/)


word_bi_gram = {}
splited_str.each do |word|
    word_bi_gram = n_gram(word, 2, word_bi_gram)
end

word_bi_gram.each do |word|
    puts word
end

puts "-----"

joined_word = splited_str.join("")
char_bi_gram = n_gram(joined_word, 2)

char_bi_gram.each do |word|
    puts word
end


