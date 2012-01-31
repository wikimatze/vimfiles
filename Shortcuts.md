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


# edit
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


# beenden
   - :q - exit vim und speichere Änderungen nicht
   - :x - speichere alle Änderungen, sofern welche existieren und beende das Programm
   - :w! - überschreibe bereits vorhandene Datei
   - :q! - beendet vim
   - :wq - beende vim und speichere Änderungen ab

# löschen und ausschneiden
   - **x** - einzelnes Zeichen löschen
   - **dw** - löschen ganzes Wort (z.B. **2dw**)
   - **d0** - löscht alles, was vor dem Cursor steht
   - **dd** - ganze Zeile ausschneiden, egal, wo der Cursor ist
   - **p** - einfügen der ausgeschnittenen Sache da, wo der Cursor ist
   - **P** - einfügen der ausgeschnitten Sachen nach dem Cursor
   - **D** - löscht alles bis zum Ende des Cursors
   - **df** danach das Wort eingeben, bis zu dem gelöscht werden soll
   - **d-Shift-g** lösche alles, was unterhalb des aktuellen Cursors steht
   - **dtG** - steht für delete to und löscht alles bis vor dem Buchstaben G steht
   - ci" - löscht alles, was in den Klammern steht und geht in den editier-Modus; statt " kann man
     auch alle anderen Klammertypen nehmen

# Faltung
   - **zo** - öffnet eine Faltung
   - **zc** - schließt eine Faltung
   - **zr** - öffne erste Stufe der Faltungen => **zR** öffne alle Stufen der Faltung
   - **zm** - schließe erste Stufe aller Faltungen => **zM** schließe alle Faltungen
   - **SPACE** - schließt und öffnet eine Faltung
   - :set foldmethod=indent - setz die Faltmethode auf Einrückung

# Fenster
   - :help STRG-w hilfe zu allen wichtigen Windowsbefehlen anzeigen
   - **CTRL-w s** - Fenster **horizontal** splitten
   - **CTRL-w v** - Fenster **vertikal** splitten
   - **CTRL-w c** - schließe aktuelles Fenster
   - *:sp bla.txt* - öffne Datei neu durch horizontalen Split
   - *:vsp bla.txt* - öffne Datei neu durch vertikalen Split
   - *:only* - alle Fenster bis auf das aktuelle schließen
   - Fokus auf Window ändern: CTRL-w w gehe im Uhrzeigersinn zum nächsten Fenster
   - **CTRL-w [hjkl]** da kann man gezielt auf das entsprechende Fenster gehen
   - **Fenstergröße anpassen**
      - **CTRL-w _** -  aktuelles Fenster horizontal max
      - **CTRL-w |** aktuelles Fenster vertikal max
      - **CTRL-w [+-]** - um die Größe inkrementel anzupassen
      - **CTRL-w =** - mache alle Fenster gleichgroß
   - **Fenster neu anordnen**
      - **CTRL-w r** mach alles reverse
      - **CTRL-w x** tausche jeweils die Nachbarn

# tabs
   - *vim -p [filename1] [filename]* öffnet alle Datein in Tabs
   - *:tabedit filename* - öffnen
   - *:q* - schließen
   - *:tabonly* schließt alle anderen Tabs bis auf das aktuelle
   - **bewegen**
      -  **gt** gehe nach rechts die Tabs durch (**3gt** geh zum dritten Tab nach rechtsausgehen Tab)
      - **gT** gehe die Tabs nach Links durch (**3gT** geh zum dritten Tabnach linksausgehen Tab)
   - **neu anordnen**
      - *:tabmove* - tab ans Ende
      - *:tabmove 0* - tab an den Anfang

# marks
   - *ma* - create a mark with the name a (wird für jede Datei abgespeichert)
   - *'a* - springt zur Marke a
   - Marken können von [a-z] gehen und sind lokal für jede Datei
   - Marken mit [A-Z] sind global, sind also wie Favoriten
   - *:marks* - gibt alle Marken der aktuellen Datei an

# help
   - :help so kommt man ins Hilfe Menü
   - Doppelklick mit Maus öffnet Hyperlinks

# markieren
   - einen ganzen Paragraphen auswählen: in visual mode und *ap*
   - *Shift-v* - markiert die ganze Zeile im Visual modus

# sortieren
   -  im _VISUAL_-Mode den Text markieren, nach dem sortiert werden soll
   - **sort** eingeben (normale Sortierung)
   - **sort!** eingeben (inverse Sortierung)
   - **!sort** sortiert alles was im Visual-Modus markiert ist

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