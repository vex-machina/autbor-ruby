tableData = [['apples', 'oranges', 'cherries', 'banana'],
             ['Alice', 'Bob', 'Carol', 'David'],
             ['dogs', 'cats', 'moose', 'goose']]

def tprinter(lsts)
    outer_arr = []
    for lst in lsts
        inner_arr = []
        for word in lst
            inner_arr.append(word.length)
        end
        outer_arr.append(inner_arr)
    end

    col_widths = outer_arr.map { |lst| lst.max }
    rows = (0..lsts[0].length-1)
    cols = (0..lsts.length-1)

    string = ""
    for j in rows
        if j != 0
            string += "\n"
        end
        for i in cols
            string += lsts[i][j].rjust(col_widths[i]) + " "
        end
    end
    puts(string)
end

tprinter(tableData)
