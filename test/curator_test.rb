require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test

  def setup
   @curator = Curator.new
  end

  def test_curator_has_artist_arr
    assert_equal [], @curator.artists
  end

  def test_curator_has_museums
    assert_equal [], @curator.museums
  end

  def test_curator_has_photographs
    assert_equal [], @curator.photographs
  end

  def test_museums_can_be_added
    @curator.add_museum({name: "MoMA"})
    assert_equal 1, @curator.museums.count
  end

  def test_museum_id
    @curator.add_museum({name: "MoMA"})
  assert_equal 1, @curator.museums.first.id
  end

  def test_artist_can_be_added
    @curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    assert_equal 1, @curator.artists.count
  end

  def test_artist_has_id
    @curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    assert_equal 1, @curator.arists.first.id

  end


end
