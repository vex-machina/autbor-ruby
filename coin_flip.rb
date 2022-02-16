numberOfStreaks = 0
streak_count = 0
prev_toss = 2

for experimentNumber in (0..9999)
    toss = rand(0..1)
    if toss == prev_toss
        streak_count += 1
    else
        if streak_count >= 6
            numberOfStreaks += 1
        end
        streak_count = 0
    end

    if experimentNumber == 9999
        if streak_count >= 6
            numberOfStreaks += 1
        end
    end
    prev_toss = toss
end

puts("Chance of streak: #{numberOfStreaks / 100.0}")
