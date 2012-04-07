# Movement
- **h** - left
- **j** - below
- **k** - top
- **l** - right
- **w** - move forward to the next word
- **e** - move backwards to the end of the next word
- **b** - move backwards to the beginning of the word
-   - **ge** - move to the end of the previous word
- **Ctrl+u** - upper (as a picture: scroll down half of the screen)
- **Ctrl+d** - down (as a picture: scroll up half of the screen)
- **}** - move to end of next paragraph or code block
- **{** - move to start of previous paragraph or code block
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
- ) - move the cursor forward to the *next sentence*
- ( - move the cursor forward to the *previous sentence*
- **Ctrl-o** - track your movements backward => it jumps to last made changes
- **Ctrl-i** - track your movements forwards => it jumps to previous made changes
- **ddp** - will switch two lines


# Search
- **/** - just type in the searched word => Top-Down search
- **?** bottom-up search
- **n** - jump to the next matching => direction **forward**
- **N** - jump to the previous matching => direction **backwards**
- **Regex**
  - **/word$** - search after the word at the end of each line
  - **/^word** - search after the word at the beginning of each line
  - **h.l** - match all words, which starts with *h*, then any character and an *l*
- **`*`** - search after the word which stands under the cursor from *top-down*
- **`#`** - search after the word which stands under the cursor from *bottom-up*
- **single-character search**
    - **fx** - move forward to character x
    - **Fx** - move backward to character x
    - **tx** - move forward to character x but stops one sign before it
    - **Tx** - move backward to character x but stops one sign before it
- **/<word>\>** - matching only words which ends on <word>
- **/\<<word>** - matching only words which starts with <word>
- **/\<<word>\>** - matching only the word which stands alone with <word> - no other words in front
  or after the word


# Edit
- **I** - go at the beginning of the line in edit mode
- **A** - go at the end of the line in edit mode
- **r** - replace mode -the actual position of the cursor will be replaced and after that return
 to the previous mode
- **R** - stay in replace mode
- **s** - delete current char and go into replace mode
- **u** - undo last changes
- **Ctrl-R** - redo the last change
- **U** - undo last changes of the last edited line
- **p** - paste after the actual cursor position
- **P** - paste before the actual cursor position
- **u** and **U** - make the selected word or phrase in the visual mode small or big
- **yw** - copy single word
- **yy** - copy whole line
- **ggVG** - mark the whole text
- %s/old/new/g - replace occurrences of pattern in the whole document
- %s/old/new/c - replace occurrences in the text in interactive modus
- **Shift-q** - format the actual section (*gqap* is an alternative shortcut)
- **o** -go into a new line below the cursor in edit mode
- **O** - neue Zeile oberhalb vom Cursor
- **:e <Dateiname>** - edit a file (even possible to create a new file)
- **xp** - character twiddeling change the characters of two successive chars
- **ce** - change until end of word and delete the stuff -> go into insert mode
- **d$** - delete till the EOL
- **V** - mark the whole line in visual mode


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
- **D** - delete all characters after the cursor till EOL
- **df<word>** - press the character until which should be deleted (inclusve the word)
  - **dtG** -same as above but exklusive
- **d-Shift-g** - delete all lines below the actual line of the cursors
- **c** - acts like d except that it leaves you in insert mode
- **C** - deletes all characters afther the cursor position and will go in insert mode
- **ci"** - delete everything whats inside the special sign " and go into the edit mode


# Folding
  - **zo** - opens a single folding
  - **zc** - closes a single folding
  - **zr** - opens all foldings of the first level
  - **zR** - opens all foldings of all levels
  - **zm** - closes all foldings of the first level
  - **zM** - closses all foldings of all levels
  - **Space** - opens and closes a folding
  - **:set foldmethod=indent** - change the foldmethod on indendation


# Windows
- **Ctrl-w s** - split window *horizontal*
- **Ctrl-w v** - split window *vertical*
- **Ctrl-w c** - close actual window
- **:sp bla.txt** - open file via horizontal split
- **:vsp bla.txt** - open file via vertical split
- **:only** - close all windows except the actual one
- Fokus auf Window ändern: CTRL-w w gehe im Uhrzeigersinn zum nächsten Fenster
- **Ctrl-w [hjkl]** go to a specific window
- **adjust windows size**
  - **Ctrl-w _** - make the actual window horizonat max
  - **Ctrl-w |** - make the actual window vertical max
  - **Ctrl-w [+-]** - change the size incremental
  - **Ctrl-w =** - adjust all windows to the same size


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


# Indentation and Formation
- **==** - indent the actual line
- **=G** - format the whole file


# Buffer
- **:ls** - display a list of all buffers
- **:bn** - go to the next buffer
- **:bp** - go to the previous buffer
- **working with hidden buffers** - they occur if you save changes to a buffer before quitting
 the program.  There are the following strategies to get rid of this problem:
  - **:w** - write the changes
  - **:e!** - restore the origin file
  - **:bd!** - remove buffer from the buffer list and revert all made changes
  - **:q!** - force vim to quit and discard all changes to the buffers


# Register
- **"f3Y** - yanking the next three lines in register f
- **"fp** - paste the contents of register f


# Different Stuff
- **J** - join two lines
- **gi** - used in vim and open a split horizontal view of the file
- **gs** - used in vim to open a new file in the vertical view
- **~** - makes upper- and lowercase of the character where the actual cursor is
- **.**  - repeat the last made action
- **:!** - execute any extern command (like `ls`)
- **ESC** - change in the *normal* mode
- **:quit!** - close the actual file without saving the changes
- **motions** - basically just insert a number which indicates how often the following command
 should be executed
  - **2w** - move cursor two words forwards at the beginning of the second word
  - **2e** - move cursor two words forwards at the end of the second word
- **:map** - overview of all mappings of the current session
- **:messages** - history of all events of the current session
- **zt** - scroll current line at the top
- **zz** - scroll current line the middle
- **zb** - scroll current line at the bottom
- **gf** - open the file which is under the cursor
- **ZZ** - save file with changes and quit
- **ZQ** - save file without changes and quit
- **:ascii** - displays the ASCII, Hex und Octal representation of the character under the actual
 cursor
- **:retab** - replace all tabs of a file with spaces
- **:n <file_name>** - open a new file in Vim
- **<C-F>** - display a list of files in the current directory in insert mode
- **inoremap <C-F> <C-X><C-F>**
- **:.!** - execute bash command and insert output in Vim file (press !! very fast to shortcut
 this)
- **:options** - opens a new window with all specified options you can set in Vim (even with nice
  explanations)
- **:args** - prints a list of all opened files
- **daw** - deletes a words and uses text objects
. **:saveas <filename>** - save the changes you made on the new textfile


# ctags
- go to the root of the project and perform `ctags -R .` - this will create a tag file
- open vim and the generated **tags** file will be automatically selected
- **Ctrl+]** - will into the class, method or other declaration
- **Ctrl+t** - will go to the previous declaration of the method


# Spellchecker
- **:set** - activate the spell checker
- **]s** - place the cursor on the next error
- **[s** - place the cursor on the previous error
- **z=** - shows all correction to a word
- **zg** - add a word to the dictionary (this is good to create your own known words without
  displaying the wrong annotations
- **zw** - remove a word from the dictionary (good if you add a wrong version of a word in the
  dictionary)
- **set spelling=de_20** - setting the spell-language to "neue deutsche Rechtschreibung"
- **set spelling=de_19** - setting the spell-language to "alte deutsche Rechtschreibung"


# LaTeX-Suite
- **,ll** - compile the actual document (normally in dvi format)
- **,lv** - opens the compiled .dvi file with xdvi
- **,lj** - opens the compiled .dvi file just in the place where your cursor is the tex document
 you are compiling
- **Ctrl+Shift-j** - jumps to the placeholder in the document
- **n** - jumps to the next error
- **b** - jumps to the previous error
- **working with multiple files**
  - create a empt file with the name `<yourmain>.tex`
  - after that you can normally compile every included other tex document (if you are splitting
    up your tex-project)
- **forward search** (the shortcut for this is `,lv` - the rest is the theoretical explanation of
 it)
 "http://forum.ubuntuusers.de/topic/vim":http://forum.ubuntuusers.de/topic/vim-vim-latexsuite-vim-gtk
  - compile your tex-document normally
  - start the \ls mode
  - where the cursor is, this place will be displayed in the .dvi file
- **inverse (reverse) search** http://forum.ubuntuusers.de/topic/vim-vim-latexsuite-vim-gtk
  - **Ctrl-Linke** left mouse click in the .dvi file this location will be opend in the source
    file
- **Links**
  - http://vim":http://vim-latex.sourceforge.net/documentation/latex-suite.html#latex-project-example
  - http://vim":http://vim-latex.sourceforge.net/documentation/latex-suite-quickstart


# Hacks
- replace line ending through **\\\\:** `:%s/$/ \\\\/`
- change matching before and after **=:** `:%s/\(.*\)=\(.*\)/\2=\1`
- replace **a = b** to **b = a:** `:%s/\(.*\)=\(.*\)/\2=\1`

