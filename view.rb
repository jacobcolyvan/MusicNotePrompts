$prompt = TTY::Prompt.new

# functions that request user input
def menuCommand(options)
    $prompt.select("Choose menu \n", options)
end

def promptForAmount(type)
    howMany = $prompt.ask("Pass me how many #{type} you want:  ").to_i
end

def makeTable(tableData)
    rows = [] 
    rows << tableData
    Terminal::Table.new :rows => rows
end