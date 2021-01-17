
class Radio

    @@audio_samples = [
        "Here Comes the sun",
        "Wish You Were Here",
        "I Heard It Through the Grapevine",
        "Stairway To Heaven",
        "a traffic report",
        "a news report"
    ]

    def initialize(band="FM", volume=5 , freq=95.5)
        @band = band
        @volume = volume
        @freq = freq
    end

    # Getters
    attr_reader :band
    attr_reader :volume
    attr_reader :freq


    # Setters
    def volume=(value)
        return if value < 1 || value > 10
        @volume = value
    end

    def freq=(freq)
        if @band == "FM"
            return if freq < 88 || freq > 108
        elsif @band == "AM"
            return if freq < 540 || freq > 1600
        end
        @freq = freq
    end


    # Behaviour
    def status
        "station: #{@freq} #{@band}, volume: #{@volume}"
    end

    def play
        puts " The rdaio plays: " + audio_stream
    end

    def self.fm
        Radio.new()
    end

    def self.am
        Radio.new("AM", 5, 1010.0)
    end

    def audio_stream
        @@audio_samples.sample
    end

end