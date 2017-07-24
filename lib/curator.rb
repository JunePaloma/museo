class Curator
  attr_reader :artists,
              :museums,
              :photographs

  def initialize
    @artists = []
    @museums = []
    @photographs = []
  end

  def add_museum(musume)
    @museums << (musume)
  end

  # def museum_count
  #   @museums.length
  # end

  def add_artist(artist)
    @artists << (artist)
  end

end
