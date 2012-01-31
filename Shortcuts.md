# Shortcuts #

This document provides an overview of the shortcuts I'm using in vim. They are based in the the
German language and I don't want to change this - because this is so easier for me to add new
commands and shortcuts. After a while I will try to translate them  into English.


# Movement
   - **h** - left
   - **j** - below
   - **k** - top
   - **l** - right
   - **w** - move forward to the next word
   - **e** - move backwards to the end of the next word
   - **b** - move backwards to the beginning of the word
   - **CTRL-b** - move the screen backwards
   - **CTRL-f** - move the screen forwards
   - **%** - jump to the fitting  brackets of _(, {, [_ - works with HTML5 tags
   - **^** - go to the beginning of a line (think of anchored to the start)
      - **0** - is an alterantiv to **^**
   - $ - go the end of a row (the buck ends here)
   - **gg** - go to the beginning of a file
   - **G** - go to the end of a file
   - **10G** - jump to line 10
   - **G** - jump at the end of a line
   - **H** - jump to the highest visible part
   - **M** - jump to the middle position of the visible part
   - **L** - jump to the lowest position of the visible part
   - } - jump tp the *next* blank line
   - { - jump to the *previous* blank line
   - ) - move the cursor forward to the *next sentence*
   - ( - move the cursor forward to the *previous sentence*
   - **CTRL-o** - track your movements backward => it jumps to last made changes
   - **CTRL-i** - track your movements forwards => it jumps to previous made changes


# Search
   - **/** - just type in the searched word => Top-Down search
   - **?** Down-Top search
   - **n** - jump to the next matching => direction **forward**
   - **N** - jump to the previous matching => direction **backwards**
   - **Regex**
      - **/word$** - search after the word at the end of each line
      - **/^word** - search after the word at the beginning of each line
      - **h.l** - match all words, which starts with *h*, then any character and an *l*
   - `\*` - search after the word which stands under the cursor


# Edit
   - **r** - replace mode -the actual position of the cursor will be replaced and after that return
     to the previous mode
   - **R** - stay in replace mode
   - **s** - delete current char and go into replace mode
   - **u** - undo last changes
   - **U** - undo last changes of the last edited line
   - **p** - paste after the actual cursor position
   - **P** - paste before the actual cursor position
   - **u** and **U** - make the selected word or phrase in the visual mode small or big
   - **yw** - copy single word
   - **yy** - copy whole line
   - **ggVG** - mark the whole text
   - %s/old/new/g - replace occurrences of pattern in the whole document
   - %s/old/new/c - replace occurrences in the text in interactive modus
   - **SHIFT-q** - format the actual section (*gqap* is an alternative shortcut)
   - **A** - go at the end of the line in edit mode
   - **I** - go at the beginning of the line in edit mode
   - **o** -go into a new line below the cursor in edit mode
   - **O** - neue Zeile oberhalb vom Cursor
   - **:e <Dateiname>** - edit a file (even possible to create a new file)


# Close
   - **:q** - exit vim and don't save changes
   - **:x** - save all changes, if they exists and terminate Vim
   - **:w!** - overwrites existing file
   - **:q!** - exit Vim
   - **:wq** - exit Vim and save changes
   - **x** - delete single character
   - **dw** - delete whole word (Motion: *2dw* will delete two words)
   - **x** - delete single character


# Delete and Cut
   - **x** - delete single character
   - **dw** - delete whole word (Motion: *2dw* will delete two words)
   - **dd** - cut the whole line
   - **p** - paste below the actual cursor position
   - **P** - paste before the actual cursor position
   - **D** - delete all characters after the cursor at the current line
   - **df<word>** - press the character until which should be deleted (inclusve the word)
         - **dtG** -same as above but exklusive
   - **d-Shift-g** - delete all lines below the actual line of the cursors
   - **ci"** - delete everything whats inside the special sign " and go into the edit mode


# Folding
   - **zo** - opens a single folding
   - **zc** - closes a single folding
   - **zr** - opens all foldings of the first level
   - **zR** - opens all foldings of all levels
   - **zm** - closes all foldings of the first level
   - **zM** - closses all foldings of all levels
   - **SPACE** - opens and closes a folding
   - **:set foldmethod=indent** - change the foldmethod on indendation


# Windows
   - **CTRL-w s** - split window *horizontal*
   - **CTRL-w v** - split window *vertical*
   - **CTRL-w c** - close actual window
   - **:sp bla.txt** - open file via horizontal split
   - **:vsp bla.txt** - open file via vertical split
   - **:only** - close all windows except the actual one
   - Fokus auf Window ändern: CTRL-w w gehe im Uhrzeigersinn zum nächsten Fenster
   - **CTRL-w [hjkl]** go to a specific window
   - **adjust windows size**
      - **CTRL-w _** - make the actual window horizonat max
      - **CTRL-w |** - make the actual window vertical max
      - **CTRL-w [+-]** - change the size incremental
      - **CTRL-w =** - adjust all windows to the same size


# Tabs
   - **vim -p [filename1] [filename2] ...** - open files in tabs
   - **:tabedit filename** - open file as a tab
   - **:q** - close tab
   - **:tabonly** - close all tabs except the actual
   - **movement**
      - **gt** - go to the next tab (Motion: *3gt*)
      - **gT** - go to the preview tab
   - **reordering**
      - *:tabmove* - tab at the end
      - *:tabmove0* - tab at the beginning


# Marks
   - **ma** - create a mark with the name a (marks will be saved for every file)
   - *'a* - jump to mark a
   - marks can have a range [a-z] for local files
   - marks with range from [A-Z] are global - like favorite bookmarks
   - **:marks** - output marks of the actual file


# Help
   - **:help** - open the help menu (dopple click on a link will go it)
   - **:help <plugin-name>.txt** - opens the documentation of a plugin
   - **:helptags** - will regenerate the helptags


# Marking
   - **Shift-v** - mark a whole line in visual mode


# Sort
   - **sort** - normal alphabetical
   - **sort!** - inverse alphabetical
   - it so possible to mark the section that should be sorted in visual mode


# Einrückung und Formatierung
   - *==* - wird die aktuelle Zeile eingerückt
   - *=G* - wird die ganze Datei formatiert
   - **CTRL-d** - nach links rücken
   - **CTRL-t** - nach rechts rücken

# Buffer mehrere Datein werden hier angelegt
   - *:ls* - Liste aller Buffer an
   - *:bn* - gehe zum nächsten Buffer
   - *:bp* - gehe zum vorherigen Buffer
   -  Umgang mit hidden Buffers: entstehen dann, wenn man die gemachten Änderungen an einern Buffer
      vor beenden des Programms speichert. Man hat dann die folgenden Optionen, um dieses Problem zu
      beheben:
      - *:w* -schreibe die Änderungen
      - *:e!* - stelle die ursprüngliche Datei wieder her
      - *:bd!* - entferne den Bufffer aus der Bufferliste und mache alle gemachten Änderungen
        rückgängig
      - *:q!*- force vim to quit and discard all changes to the buffers

# sonstiges
   - **J** - Join zwei Zeilen mit space
   - **gJ** - join zwei Zeilen ohne space
   - **gi** - used in vim and open a split horizontal view of the file
   - **gs** - used in vim to open a new file in the vertical view
   - **~** macht aus Kleinbuchstaben Großbuchstaben und umgedreht
   - **.**  - wiederholt die letztgemachte Aktion
   - **:!** - dann kann man einen externen Befehl ausführen
   - **ESC** - in Normalenmodus wechseln
   - **:quit!** beendet eine Datei ohne die gemachten Änderungen abzuspeichern
   - motions (einfach vor den Befehlen eine Zahl schreiben und dann werden die jeweiligen
      Aktionen ausgeführt)
      - **2w** - Cursor zwei Wörter vorwärts an die erste Stelle des zweiten Wortes bewegen
      - **2e** - Cursor zwei Wörter vorwärts an die letzte Stelle des dritten Wortes
   - **:map** Übersicht aller mappings der aktuellen Sitzung
   - **:messages** ist die Historie der Events der aktuellen Session
   - **Toggle** - automatisches Scrollen der aktuellen Zeilennummer
   - **zz** - aktuelle Zeile in die Mitte
   - **zt** - aktuelle Źeile in den Top
   - **zb** - aktuelle Zeile nach ganz unten setzen
   - **CTRL-a** und **CTRL-x** erhöhen bzw. senken Zahlen unter dem Cursor
   - **gf** öffnet die Datei unter dem der Cursor steht
   - **ZZ** - speichere Datei und beende sie
   - **ZQ** - beende Datei ohne Änderungen zu speichern
   - Datein verschlüsseln -  vim -x secret.txt
   - **:ascii** - gibt ASCII, Hex und Octalzahl des Buchstaben aus, unter dem der Cursor steht
   - **:retab** => ersetzt alles Tabs in einer Datei durch Spaces
   - **CTRL-r** redo
   - **:retab** will remove all tabs in a file  - Shift-p davor einfügen
   - **:n <file_name>** will open a new file in vim

# Spellchecker
   - **:set** spell aktiviert spellchecker
   - **]s** setzt den Cursor auf den nächsten Fehler im Text und **[s** setzt den Cursor auf den
     vorherigen Fehler
   - **z=** zeigt zu einem Wort alle möglichen Korrekturen an
   - **zg** Wort zum Wörterbuch adden
   - **zw** Wort entfernen
   - **set spelling=de_20** - neue deutsche RS
   - **set spelling=de_19** - alte deutsche RS

# LaTeX-Suite
   - **,ll** kompiliere und lv öffne die dvi (Tastenkombi sehr schnell eingeben)
   - **STRG+SHIFT-j** springt man zu den Platzhaltern in den Dokumenten
   - **n** - springt man zum nächsten Fehler
   - **b** - springt man zum vorherigen Fehler
   - multiple files
      -  lege eine leere Datei mit den Namen <yourmain>.tex.latexmain an
      -  dann kann man in jedem Dokument kompilieren
   - forward search:
     "http://forum.ubuntuusers.de/topic/vim":http://forum.ubuntuusers.de/topic/vim-vim-latexsuite-vim-gtk
      - Dokument ganz normal kompiliert
      - dann mit \ls den Modus starten
      - und wo gerade der Cursor ist, an dieser Stelle springt man dann im dvi-File auch hin
   - inverse (reverse) search: http://forum.ubuntuusers.de/topic/vim-vim-latexsuite-vim-gtk
      - **CTRL-Linke** Maustaste und es wird an der entsprechenden Stelle im Quellcode gesprungen
   - Links
      - http://vim":http://vim-latex.sourceforge.net/documentation/latex-suite.html#latex-project-example
      - http://vim":http://vim-latex.sourceforge.net/documentation/latex-suite-quickstart

# Hacks
   - das Zeilenende durch \\ ersetzen: `:%s/$/ \\\\/
   - Matching vor und hinter = tauschen: :%s/\(.*\)=\(.*\)/\2=\1
   - ersetze a = b durch b = a: `:%s/\(.*\)=\(.*\)/\2=\1`
