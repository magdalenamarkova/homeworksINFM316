class ShiftCipher 
    def self.encode(plain_string, shift=3)
        alphabet = Array('a'..'z')
        encrypter = Hash[alphabet.zip(alphabet.rotate(shift))]
        plain_string.downcase.chars.map { |c| encrypter.fetch(c, " ") }
    end 
end
