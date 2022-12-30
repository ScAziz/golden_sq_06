# 1. Describe the problem 

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

# 2. Design the class interface

```ruby
class MusicTracker

def initialzer
  @track_array = Array.new
end

def add_track(track) #track is s tring representing a song
  @track_array.push(track)
  # does not return anything
  # if no track is given, it fails
end 

def track_list
  # returns track_array
  # if array is empty it fails
end

end
```

# 3. create examples as tests

```ruby
# 1 

my_tracks = MusicTracker.new
my_tracks.add_track("keep the fire burning")
my_tracks.track_list # => ["keep the fire burning"]

# 2

my_tracks = MusicTracker.new
my_tracks.add_track("keep the fire burning")
my_tracks.add_track("all this love that i'm giving")
my_tracks.track_list # => ["keep the fire burning", "all this love that i'm giving"]

# 3

my_tracks = MusicTracker.new
my_tracks.add_track("") # => "No track given!"

# 4

my_tracks = MusicTracker.new
my_tracks.list # => "Your tracklist is empty! Add some music."

```