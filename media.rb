#script to add functionality to image, video and audio hosting pages

#superclass Clip to define common functionality
class Clip
    #default setting for comments
    attr_reader :comments
    def initialize
        #empty array is created to add comments
        @comments = []
    end
    #add comments
    def add_comment(comment)
        #comment is added into @comments array
        comments << comment
    end

    #file playback
    def play
        puts "Playing #{object_id}..."
    end
end

#subclass for video files
class Video < Clip
    #record file resolution
    attr_accessor :resolution
end

#subclass for audio files
class Song < Clip
    #record bpm in audio file
    attr_accessor :beats_per_minute
end

#test run of the code
video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending")
song = Song.new
song.add_comment("Awesome beat")

#display comments in terminal
p video.comments, song.comments