the_board = {
    "top-L" => " ", "top-M" => " ", "top-R" => " ",
    "mid-L" => " ", "mid-M" => " ", "mid-R" => " ",
    "low-L" => " ", "low-M" => " ", "low-R" => " "
}

def print_board(board)
    puts(board["top-L"] + "|" + board["top-M"] + "|" + board["top-R"])
    puts("-+-+-")
    puts(board["mid-L"] + "|" + board["mid-M"] + "|" + board["mid-R"])
    puts("-+-+-")
    puts(board["low-L"] + "|" + board["low-M"] + "|" + board["low-R"])
end

turn = "X"
num_moves = 0

while true
    print_board(the_board)
    printf("Turn for " + turn + ". Move on which space? ")
    move = gets.chomp

    while the_board.keys.include?(move) == false
        puts("Invalid entry")
        move = gets.chomp
    end

    the_board[move] = turn
    if turn == "X"
        turn = "O"
    else
        turn = "X"
    end

    num_moves += 1
    if num_moves == 9
        puts("Tie!")
        break
    end
end
