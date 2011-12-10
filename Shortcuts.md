# Shortcuts #

This document provides an overview of the shortcuts I'm using in vim. They are based in the the
German language and I don't want to change this - because this is so easier for me to add new
commands and shortcuts. After a while I will try to translate them  into English.

# Bewegung
   - **h** - links
   - **j** - unten
   - **k** - oben
   - **l** - rechts
   - **w** - vorwärts zum Anfang des nächsten Wortes
   - **e** - vorwärts zum Ende des nächsten Wortes
   - **b** - rückwärts zum Anfang des Wortes
   - **CTRL-b** - bewege Screen backward
   - **CTRL-f** - bewege Screen forward
   - % - spring zur passenden Klammer von _(, {, [_
   - ^ - Anfang einer Zeile gehen (think of anchored to the start)
      - **0** - als Alternative
   - $ - ans Ende einer Zeile (the buck ends here)
   - **gg** - springt an den Anfang einer Datei
   - **G** - spring an das Ende einer Datei
   - **10G** - springe zur 10 Zeile
   - **H** - höchste Stelle des sichtbaren Bereichs springen
   - **M** - mittlere Stelle des sichtbaren Bereichs springen
   - **L** - ende Stelle des sichtbaren Bereichs springen
   - } - zur *nächsten* Leerzeile springen
   - { - zur *vorherigen* Leerzeile springen
   - ) - move the cursor forward to the *next sentence*
   - ( - move the cursor forward to the *previous sentence*
   - **CTRL-o** - verfolge deine Bewegungen rückwärts (es springt also zur letzten gemachten Änderung)
   - **CTRL-i** - verfolge deine Bewegungen vorwärts (springe zu letzt gemachten Änderungen)
   - **CTRL-d** - springe ans Ende einer Datei

# Suche
   - / - dann das gesucht Wort eingeben => Top-Down Suche
   - ? Down-Top Suche
      - **n** - spring zum nächsten Matching => Richtung **vorne**
      - **N** - spring zum vorherigen Matching => Richtung **hinten**
   - **Regex**
      - /word$ - suche nach Wort am Ende jeder Zeile
      - /^word - such nach Wort am Anfang jeder Zeile
      - **h.l** - match alle Wörter, die mit h anfangen, danach kommt ein beliebiger Buchstabe und
        dann kommt l
   - \* - sucht nach den aktuellen Wort, unter dem der Cursor steht
   - **Settings**:
      - :set ignorecase - beachte Groß- und Kleinschreibung
      - :set smartcase** - achte nicht auf Groß- und Kleinschreibung

# editieren
   - **r** - ist Ersetzen, d.h. da wo der Cursor steht wird das aktuelle Zeichen ergänzt
   - **R** - bleibe im Ersetzungsmodus und ersetze Wörter weiter
   - **s** - ersetze das Zeichen (also im Visual-Modus) wo der Cursor gerade ist und geh in den
     Ersetzungsmodus
   - **u** - undo letztes geändertes Zeichen rückgängig
   - **U** - undo alle Änderungen der aktuellen Zeile
   - **p** - paste nach der aktuellen Cursor-Stelle
   - **P** - paste vor der aktuellen Cursor-Stelle
   - **CTRL-r** - redo
   - **CTRL-d** - entfernt tab -> ist praktisch, wenn man mit Einrückungen arbeitet
   - **CTRL-w** - löscht alle Buchstaben des Wortes vor dem Cursor unter dem er steht
   - u und U - machen im Visualmode das ausgewählte Wort oder Phrase klein- bzw. groß
   - **yw** - einzelnes Wort kopieren
   - **yy** - Zeile kopieren
   - **ggVG** - den ganzen Text markieren
   - %s/old/new/g - alle Vorkommnisse in der ganzen Datei ersetzen
   - %s/old/new/c - alle Vorkommnisse im interaktiven Modus ersetzen
   - **gqap** - formatiert den aktuellen Paragraphen (**SHIFT-q** formatiere die Markierung)
   - **A** - gehe an Zeilenende in den Editiermodus
   - **I** - gehe an Zeilenanfang in den Editiermodus
   - **o** - neue Zeile unter dem Cursor
   - **O** - neue Zeile oberhalb vom Cursor
   - :e <Dateiname> - kann man eine Datei editieren

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


