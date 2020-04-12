# Music Note/Chord Prompts
A basic CLI that provides three main functions:
- Produces user defined amount of notes
- Gives a random scale
- Gives a user defined amount of chords

<br>
Intended to help with road blocks when jamming. At this point is entirely randomp; note/chord relationships are undefined. <br>
Earlier versions tried to implement an ability to play notes (using Muse), but it turns out Ruby isn't very good at managing audio.

### Setup
Implements basic MVC model; and is executed by running the file "controller.rb".
<br>
*NOTE:* Requires the gems 'tty-prompt' and 'terminal-table'