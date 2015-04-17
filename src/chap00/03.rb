str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."

splited_str = str.split(/\s|,\s*|;\s*|\.\s*/)

splited_str.each do |word|
    # puts word
    puts word.size
end

