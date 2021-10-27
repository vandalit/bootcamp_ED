class Video
    attr_accessor :titulo, :duracion    
    def reproduce
        puts "El video se esta reproducciendo"
    end
end
class YouTubeVideo < Video
    attr_accessor :id_youtube
    def reproduce
        puts "El video continuara hasta que le presiones stop"
    end
end
class FaceBookVideo < Video
    attr_accessor :id_facebook
end
#recordatorio para las declaraciones, los "=" se usan para crear los objetos/vaiables, 
#mientras que los "." se usan para acceder a metodos existentes.
yt = YouTubeVideo.new
yt.reproduce
fb = FaceBookVideo.new
fb.reproduce