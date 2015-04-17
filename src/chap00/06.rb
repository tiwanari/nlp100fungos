# n-gram は出現頻度ではない？？？
def n_gram(str, n, dict=[])
    for i in 0...str.size-(n-1) do
        unless dict.include?(str[i, n])
            dict << str[i, n]
        end
    end
    return dict
end

x_word = "paraparaparadise"
y_word = "paragraph"

x_bi_gram = n_gram(x_word, 2) # X
y_bi_gram = n_gram(y_word, 2) # Y

# X
puts "-- X --"
puts x_bi_gram 

# Y
puts "-- Y --"
puts y_bi_gram

# X + Y
puts "-- X + Y --"
plu = x_bi_gram | y_bi_gram
puts plu

# X - Y
puts "-- X - Y --"
min = x_bi_gram - y_bi_gram
puts min

# X & Y
puts "-- X & Y --"
tim = x_bi_gram & y_bi_gram
puts tim


puts "---"
# se \in X
if x_bi_gram.include?("se")
    puts "X has se"
else
    puts "X doesn't have se"
end

# se \in Y
if y_bi_gram.include?("se")
    puts "Y has se"
else
    puts "Y doesn't have se"
end

