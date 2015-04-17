str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."

splited_str = str.split(/\s|,\s*|;\s*|\.\s*/)

need_top_one = [1, 5, 6, 7, 8, 9, 15, 16, 19]

dict = {}

splited_str.each_with_index do |word, i|
    if need_top_one.include?(i + 1)
        dict["" + word[0]] = i + 1
    else
        dict["" + word[0] + word[1]] = i + 1
    end
end

dict.each do |word|
    puts word
end

