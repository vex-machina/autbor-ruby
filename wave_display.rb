indent = 0   # How many spaces to indent.
indentIncreasing = true   # Whether the indentation is increasing or not.

begin
    while true
        printf(' ' * indent)
        puts("********")
        sleep(0.1)

        if indentIncreasing
            # Increase the number of spaces:
            indent += 1
            if indent == 20
                # Change direction:
                indentIncreasing = false
            end

        else
            # Decrease the number of spaces:
            indent -= 1
            if indent == 0
                # Change direction:
                indentIncreasing = true
            end
        end
    end

rescue Interrupt => e
end
