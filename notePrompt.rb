require 'tty-prompt'
require 'terminal-table'

#global inputs
$prompt = TTY::Prompt.new
$notesHash = {
    0=>"a", 1 => "a#", 2=> "b", 3 => "c", 4=>"c#", 5=>"d", 
    6=>"d#", 7=>"e", 8=>"f", 9=>"f#", 10=>"g", 11=>"g#"
}
$chordHash = {
    0 => "maj", 1 => "min", 2=>"maj7", 3=>"min7", 4=>"dom", 5=>"dim"
}


#main functions (usermenu)
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


#global functions
def promptForAmount(type)
    howMany = $prompt.ask("Pass me how many #{type} you want:  ").to_i
end
def makeTable(tableData)
    rows = [] 
    rows << tableData
    Terminal::Table.new :rows => rows
end


#user menu
def userMenu()
    options = {"Note Prompt"=>"notePrompt", "Scale Prompt"=>"scalePrompt", "Chord Prompt"=>"chordPrompt", "Exit"=>"exit"}
    command = $prompt.select(" Choose menu \n", options)
    self.send(command)
end


userMenu()