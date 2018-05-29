class PassedOrFailed
    @result
    def initialize(students, limit)
        passed = Hash.new
        failed = Hash.new
        students.each do |name, mark|
            if mark.to_i >= limit.to_i
                passed[name] = mark.to_i
            else
                failed[name] = mark.to_i
            end
        end
        @result = Hash.new
        @result[:passed] = passed
        @result[:failed] = failed
    end

    def perform
        return @result
    end
end
