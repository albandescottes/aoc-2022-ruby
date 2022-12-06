require_relative "../day/index" 
class Day1
include Day
    @@dayNumber = 1

    def sliceMaxs(arr, chunk)
        arr.slice(0,chunk);
    end

    def parseInput
        readFileLines
            .slice_before("")
            .map {_1.map(&:to_i).sum}
            .sort.reverse!
    end
    def solveOne
        sliceMaxs(parseInput,1).sum
    end

    def solveTwo
        sliceMaxs(parseInput,3).sum
    end
end
Day1.new.solveDay

