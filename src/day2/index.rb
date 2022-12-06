require_relative "../day/index" 
class Day2
include Day
    @@dayNumber = 2
    @@myHand = { "X" => 1, "Y" => 2, "Z" => 3 }
    def oneGame(my, op)
        if { "Y" => "A", "Z" => "B", "X" => "C" }[my] == op
            6
        elsif { "X" => "A", "Y" => "B", "Z" => "C" }[my] == op 
            3
        else
            0
        end
    end

    def twoGame(my, op)
        if my == "Z"
            { "A" => "Y", "B" => "Z", "C" => "X" }[op]
        elsif my == "Y"
            { "A" => "X", "B" => "Y", "C" => "Z" }[op]
        else 
            { "A" => "Z", "B" => "X", "C" => "Y" }[op]
        end
    end

    def solveOne
        readFileLines
            .map{_1.split}
            .map{ |g| @@myHand[g[1]] + oneGame(g[1], g[0])}
            .sum
    end

    def solveTwo
        readFileLines
            .map{_1.split}
            .map{ |g|
                nH = twoGame(g[1], g[0])
                @@myHand[nH] + oneGame(nH, g[0])}
            .sum
    end
end
Day2.new.solveDay

# A - X rock = 1
# B - Y paper = 2
# C - Z scissors = 3