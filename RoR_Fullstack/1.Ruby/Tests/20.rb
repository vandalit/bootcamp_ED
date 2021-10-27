class Video
    attr_accessor :titulo, :duracion    
    def reproduce
        puts "El video se esta reproducciendo"
    end
end
class YouTubeVideo < Video
    attr_accessor :id_youtube
    def reproduce
        #sobrecargando metodo
        super
            puts "El video continuara hasta que le presiones stop"
    end
end
class FaceBookVideo < Video
    attr_accessor :id_facebook
end

yt = YouTubeVideo.new
yt.reproduce
fb = FaceBookVideo.new
fb.reproduce