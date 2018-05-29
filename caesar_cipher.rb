class CaesarCipher
    @value
    def initialize(text, rot = 13)
        @value = text.chars.map(&:ord)
        @value = @value.map do |chr|
            if chr.between?(48, 57)
                self.shift(chr, rot, 48, 57)
            elsif chr.between?(65, 90)
                self.shift(chr, rot, 65, 90)
            elsif chr.between?(97, 122)
                self.shift(chr, rot, 97, 122)
            else
                chr
            end
        end
        @value = @value.map { |chr| chr.chr }.join
    end

    def perform
        return @value
    end

    def shift (value, rot, min, max)
        new_chr = value + rot
        if new_chr.between?(min, max)
            new_chr
        elsif new_chr < min
            max - (min - new_chr) + 1
        else
            (new_chr - max) + min - 1
        end
    end
end
