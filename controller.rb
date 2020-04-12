require_relative './model.rb'
require_relative './view.rb'


#middleman between view.rb and model.rb
def userMenu()
    options = {"Note Prompt"=>"notePrompt", "Scale Prompt"=>"scalePrompt", "Chord Prompt"=>"chordPrompt", "Exit"=>"exit"}
    self.send(menuCommand(options))
end


userMenu()