def collatz(number)
    if number % 2 == 0
        puts((number / 2).floor)
        return ((number / 2).floor)
    else
        puts(3 * number + 1)
        return (3 * number + 1)
    end
end

printf("Enter a number: ")
num = Integer(gets.chomp)

while num != 1
    num = collatz(num)
end
