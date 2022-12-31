class MusicTracker

    def initialize
        @track_array = Array.new
    end

    def add_track(track)
        if track == ""
            fail "No track given!"
        else
            @track_array.push(track)
        end
        
    end

    def list
        if @track_array.empty?
            fail "Your tracklist is empty! Add some music."
        else
            return @track_array
        end
    end

end