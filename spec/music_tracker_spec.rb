require "music_tracker"

RSpec.describe MusicTracker do 
    context "when given a string representing a track" do
        it "adds that track to the track_array" do 
            my_tracks = MusicTracker.new
            my_tracks.add_track("keep the fire burning")
            expect(my_tracks.list).to eq ["keep the fire burning"]
        end
    end

    context "when given another string representing a track" do
        it "adds that track to the track_array" do 
            my_tracks = MusicTracker.new
            my_tracks.add_track("keep the fire burning")
            my_tracks.add_track("all this love that i'm giving")
            expect(my_tracks.list).to eq ["keep the fire burning", "all this love that i'm giving"]
        end
    end
    
    context "when no string is given to add_track" do 
        it "fails" do 
            my_tracks = MusicTracker.new
            expect { my_tracks.add_track("") }.to raise_error "No track given!"
        end
    end

    context "when track_array is empty and list method is called" do 
        it "fails" do 
            my_tracks = MusicTracker.new
            expect { my_tracks.list }.to raise_error "Your tracklist is empty! Add some music."
        end
    end

end 