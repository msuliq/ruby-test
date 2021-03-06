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
        #if @comments is nil then empty arrays is assigned
        #else method returns @comments
        @comments ||= []
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

#separate for photo files, unrelated to SuperClass
class Photo
    #add commenting module
    include AcceptsComments
    #set default format
    def initialize
        @format = 'JPEG'
    end
    #display of image
    def show
        puts "Displaying #{object_id}..."
    end
end 

#test run of the code
video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending")
song = Song.new
song.add_comment("Awesome beat")
photo = Photo.new
photo.add_comment("Beautiful colors")


#display comments in terminal
p video.comments, song.comments, photo.comments

video.play
song.play
photo.show