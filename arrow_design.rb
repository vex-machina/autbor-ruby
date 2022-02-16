inner_list = []
outer_list = []
buffer = 1

for y in (0..6)
    counter = 0
    for x in (0..9)
        if y == 0
            target_arr = [2,3,5,6]
            if target_arr.include?(x)
                inner_list.append("0")
            else
                inner_list.append(".")
            end
        else
            if counter == 0
                target_arr = ((x + buffer)..(8 - buffer) + 1)
            end
            if target_arr.include?(x)
                inner_list.append("0")
            else
                inner_list.append(".")
            end
            counter += 1
        end
    end

    outer_list.append(inner_list.join())
    inner_list = []
    if y >= 2
        buffer += 1
    end
end

puts(outer_list)
