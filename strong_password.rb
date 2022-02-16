''' Write a function that uses regular expressions to make sure the password string it is passed is strong. A strong password is defined as one that is 
at least eight characters long, contains both uppercase and lowercase characters, and has at least one digit. You may need to test the string against 
multiple regex patterns to validate its strength. '''

def strong_password(string)
    ec_reg = string.match(/^.{8,}$/)
    upp_reg = string.match(/[A-Z]+/)
    low_reg = string.match(/[a-z]+/)
    dig_reg = string.match(/[0-9]+/)

    if ec_reg and upp_reg and low_reg and dig_reg
        return true
    else
        return false
    end
end

puts(strong_password("hello"))
puts(strong_password("aA1worgj"))
