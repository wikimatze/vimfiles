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

