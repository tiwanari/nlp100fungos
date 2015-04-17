def encode(str)
    dist = 219
    new_str = ""
    for i in 0...str.size do 
        char = str[i]
        if /[a-z]/ =~ char
            w = dist - char.ord
            new_str += w.chr
        else
            new_str += char
        end
    end
    return new_str
end

def decode(str)
    return encode(str)
end

str = "AAAbbAbaAbazzz"
puts str
s = encode(str)
puts s
ss = encode(s)
puts ss

