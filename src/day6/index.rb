require_relative "../day/index" 
class Day6
include Day
    @@dayNumber = 6

    def solveOne
        input = readAllFile
        s=0
        chunk=4
        while true
            extract = input.slice(s,chunk)
            if extract.chars.uniq.length == chunk
                break
            end
            s+=1
        end
        s+chunk
    end

    def solveTwo
        input = readAllFile
        s=0
        chunk=14
        while true
            extract = input.slice(s,chunk)
            if extract.chars.uniq.length == chunk
                break
            end
            s+=1
        end
        s+chunk
    end
end
Day6.new.solveDay

