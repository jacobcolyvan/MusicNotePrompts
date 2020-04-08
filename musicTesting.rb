require "muse"
include Muse
require "wavefile"
include WaveFile

bar = Proc.new {b4; a4; gis4; a4;}

Song.record 'turkish_march' do
    bar(1,b:0.25).notes(bar)
  end

  
  # Reader.new("turkish_march.wav").each_buffer do |buffer|
  #   puts "Read #{buffer.samples.length} sample frames."
  # end

  # titleMusic = fork{ exec 'afplay', "./turkish_march.wav" }