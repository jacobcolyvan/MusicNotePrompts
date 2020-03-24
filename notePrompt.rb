require 'tty-prompt'
require 'terminal-table'
require 'muse'
include Muse



notesHash = {
    0=>"a", 1 => "a#", 2=> "b", 3 => "c", 4=>"c#", 5=>"d", 
    6=>"d#", 7=>"e", 8=>"f", 9=>"f#", 10=>"g", 11=>"g#"
}
$prompt = TTY::Prompt.new



def musicTable(notesHash)
    howManyNotes = $prompt.ask("Pass me how many notes you want:  ").to_i
    $notes = []


    for i in 1..howManyNotes 
        seed = rand(12)
        $notes.push(notesHash[seed])
    end

    rows = []
    rows << $notes
    return Terminal::Table.new :rows => rows
end

puts musicTable(notesHash)
# p $notes

# songBar = ""

# for i in 0..$notes.length-1
#     if $notes[i].include?("#")
#         $notes[i] = $notes[i][0]+ "is"
#     end
#     songBar << $notes[i]+"4; "
# end
# songBar << ""
# puts songBar
# # stack = proc { do_this }
# $bar = Proc.new  { b4; a4; gis4; a4; } 

# Song.record 'promptSong' do
#     bar(1,b:0.25, bpm:50).notes (&$bar)
# end
# titleMusic = fork{ exec 'afplay', "./promptSong.wav" }



