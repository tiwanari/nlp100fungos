str = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."

words = str.split(/\s|,\s*|:\s*|;\s*|\.\s*/)
wrods = words.delete("") # TODO: better way

dict = []
words.each do |word|
    if word.size <= 4
        dict << word
        next
    end
    sub = word[1, word.size-2].chars # substring excluding the start and end characters
    sub.shuffle!
    new_word = word[0] + sub.join("") + word[-1]
    dict << new_word
end


puts dict
