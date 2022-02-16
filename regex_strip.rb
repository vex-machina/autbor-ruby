'''Write a function that takes a string and does the same thing as the strip() string method. If no other arguments are passed other than the string 
to strip, then whitespace characters will be removed from the beginning and end of the string. Otherwise, the characters specified in the second 
argument to the function will be removed from the string.'''

def regex_strip(string, target = " ")
    if target == " "
        str_match = string.match(/\A\s*(.*\S)\s*\Z/)
        return str_match[1]
    else
        return string.gsub(/#{target}/, "")
    end
end

puts(regex_strip("  abc   "))
puts(regex_strip("Seahorse", "Sea"))
