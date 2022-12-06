module Day
    @@dayNumber = nil
    def readAllFile 
        if @@dayNumber
            File.read("inputs/day#{@@dayNumber}/input.txt")
        else
            nil
        end
    end
    def readFileLines(sep="\n") 
        if @@dayNumber
            File.read("inputs/day#{@@dayNumber}/input.txt").split(sep)
        else
            nil
        end
    end

    def solveOne
        "not override"
    end

    def solveTwo
        "not override"
    end

    def solveDay
        puts "Today is #{@@dayNumber}\n" 
        puts "result part 1 : #{solveOne}" 
        puts "------------" 
        puts "result part 2 : #{solveTwo}" 
    end
end
