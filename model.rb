require 'tty-prompt'
require 'terminal-table'

#NOTE: could add save functionality
#function data
$notesHash = {
    0=>"a", 1 => "a#", 2=> "b", 3 => "c", 4=>"c#", 5=>"d", 
    6=>"d#", 7=>"e", 8=>"f", 9=>"f#", 10=>"g", 11=>"g#"
}
$chordHash = {
    0 => "maj", 1 => "min", 2=>"maj7", 3=>"min7", 4=>"dom", 5=>"dim"
}

#NOTE: yet to be implemented functionality.
#scale template that gives us chord types, and interval positions
$majScaleTemplate = {
    "I"=>2, "ii"=>2, "iii"=>2, "IV"=>1, "V"=>2, "vi"=> 2, "vii"=>1
}
$minorScales = ["Natural", "Harmonic", "Melodic"]



#functions that implement program logic
def notePrompt()
    notes = []
    notesAmount = promptForAmount("notes")

    for i in 1..notesAmount 
        notes.push($notesHash[rand(12)])
    end

    puts makeTable(notes)
    userMenu()
end
def scalePrompt() 
    #NOTE: can add mode functionality
    scale = $notesHash[rand(12)]+$chordHash[rand(2)]
    puts makeTable([scale])

    userMenu()
end
def chordPrompt()
    chords = []
    chordsAmount = promptForAmount("chords")

    for i in 1..chordsAmount 
        chords.push($notesHash[rand(12)].to_s+"/"+$chordHash[rand(6)].to_s)
    end

    puts makeTable(chords)
    userMenu
end


