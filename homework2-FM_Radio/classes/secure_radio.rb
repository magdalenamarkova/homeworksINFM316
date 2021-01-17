require_relative "radio"
require_relative "shift_cipher"

class SecureRadio < Radio
    def play 
        encoded_string = ShiftCipher.encode(audio_stream, 3).join(' ')
        puts ("The radio plays: #{encoded_string} ")
    end
end
