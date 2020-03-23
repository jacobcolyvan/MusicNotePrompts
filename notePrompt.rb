require 'tty-prompt'
require 'terminal-table'
require 'muse'



notesHash = {
    0=>"a", 1 => "A#", 2=> "B", 3 => "C", 4=>"C#", 5=>"D", 
    6=>"D#", 7=>"E", 8=>"F", 9=>"F#", 10=>"G", 11=>"G#"
}
$prompt = TTY::Prompt.new



def musicTable(notesHash)
    
    howManyNotes = $prompt.ask("Pass me how many notes you want:  ").to_i
    notes = []


    for i in 1..howManyNotes 
        seed = rand(12)
        notes.push(notesHash[seed])
    end

    rows = []
    rows << notes
    return Terminal::Table.new :rows => rows
end




puts musicTable(notesHash)

