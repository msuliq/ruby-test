#script to add functionality to image, video and audio hosting pages

#superclass Clip to define common functionality
class Clip
    #file playback
    def play
        puts "Playing #{object_id}..."
    end
end

#commenting is a separate module so class Photo can inherit comments
#but skip playback
module AcceptsComments
    #define commenting
    def comments
        #if comments exist then use comments array
        if @comments
            @comments
        #if this is a first comment then add it to an empty array
        else
            @comments = []
        end
    end
    #add comments
    def add_comment(comment)
        #comment is added into @comments array
        comments << comment
    end
end

#subclass for video files
class Video < Clip
    #add commenting module
    include AcceptsComments
    #record file resolution
    attr_accessor :resolution
end

#subclass for audio files
class Song < Clip
    #add commenting module
    include AcceptsComments
    #record bpm in audio file
    attr_accessor :beats_per_minute
end

#subclass for photo files
class Photo
end 

#test run of the code
video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending")
song = Song.new
song.add_comment("Awesome beat")

#display comments in terminal
p video.comments, song.comments

video.play
song.play