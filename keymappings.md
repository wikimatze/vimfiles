# Movement
- `h`, `j`, `k`, `l` →  left, below, top, right
- `w` → go forward to the next word
- `W` → go forward to the next word via whitespace separation (no words are counted)
- `e` → go backwards to the end of the next word
- `E` → go to the previous word via whitespace separation (no words are counted)
- `ge` → go to the end of the previous word
- `gE` → go to the end of the previous word via whitespace separation (no words are counted)
- `b` → move backwards to the beginning of the word
- `B` → jump to previous word via whitespace separation (no words are counted)
- `}` → move to end of next paragraph or code block
- `{` → move to start of previous paragraph or code block
- `)`→ move the cursor forward to the *next sentence*
- `(` → move the cursor forward to the *previous sentence*
- `%` → jump to the fitting  brackets of _(, {, [_
- `10G` → jump to line 10
- `$` → go the end of a row (the buck ends here)
- `G` → go to the end of a file
- `gg` → go to the beginning of a file
- `^`| `0` → go to the beginning of a line (think of anchored to the start)
- `ddp` → will switch two lines
- `Ctrl-U` → scroll upper (as a picture: scroll down half of the screen)
- `Ctrl-D` → scroll down (as a picture: scroll up half of the screen)
- `Ctrl-I` → track your movements forwards => it jumps to previous made changes
- `Ctrl-O` → track your movements backward => it jumps to last made changes
- `H` → jump to the highest visible part
- `M` → jump to the middle position of the visible part
- `L` → jump to the lowest position of the visible part
- `Ctrl→Left` → move one word back
- `Ctrl→Right` → move one word forward
- `Ctrl→c` → exit the command-line
- `Ctrl→b` → move to the beginning
- `Ctrl→e` → move to the end
- `Ctrl→c` → exit the command-line


# Edit
- `I` → go to the beginning of line in edit mode
- `A` → go at the end of line in edit mode
- `r` → the actual position of the cursor will be replaced and go back into normal mode
- `R` → stay in replace mode
- `o` → go into a new line below the cursor in edit mode
- `O` → neue Zeile oberhalb vom Cursor
- `yy` → copy whole line (`Y` means the same)
- `yw` → yank whole word
- `u` → undo last changes (`U` undo last changes of the last edited line)
- `Ctrl→R` → redo the last change
- `p` → *put* after the cursor
- `P` → *put *before the cursor
- `u` | `U` → make the selected text in visual mode small or big
- `xp` → character twiddeling change the characters of two successive chars
- `V` → mark the whole line in visual mode
- `:wall` → write all changes in all open buffers
- `'0` →   when opening Vim and pressing this command will bring you back to last file you changed -
  handy if you have to shutdown and start the work again
- `"+y` → copy to clipboard (you have to be in visual mode)
- `"+p` → paste from clopboard
- `cw` → change word (very effective in combination with with *Visual Block* select)
- `ggVG` → mark the whole text


# Search and Replace
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
- **%s/.../<options>** - will start the substitute function
    - with range: 1,5s/this/that/g - will replace this through that in lines 1-5
    - /g - will replace all matchings at a line
    - /c - makes prompt for each replacement
    - /e - no finding a match is no error


# Close
- **:q** - exit vim and don't save changes
- **:x** - save all changes, if they exists and terminate Vim
- **:w!** - overwrites existing file
- **:q!** - exit Vim
- **:wq** - exit Vim and save changes
- **x** - delete single character
- **dw** - delete whole word (Motion: *2dw* will delete two words)
- **x** - delete single character
- **:qall** - quite all windows and will ask for unmodified changes


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
- **zR** - reduce all folding (opens all foldings)
- **zM** - folds more (closse all foldings of all levels)
- **zm** - close all foldings of the first level
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
- **:tabedit <name>** - opens a new tab with the specified file name
- **:q** - close tab
- **:tabonly** - close all tabs except the actual
- **:tabcloseN** - will close the N-th tab
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
- **gV** - reselect the text which was marked in visual mode before


# Sort
- **sort** - normal alphabetical
- **sort!** - inverse alphabetical
- it so possible to mark the section that should be sorted in visual mode


# Indentation and Formation
- **==** - indent the actual line
- **=G** - format the whole file


# Buffer
- `:ls` → list all buffers
  - `#a` → stands for a no name buffer
  - `%a` → stands for the current buffer
  - `#` → stands for the previous buffer
- `:b` <number>|<name> → will open the buffer of the specified number or name
- `:bn` → go to the next buffer
- `:bp` → go to the previous buffer
- `:b#` → jump to the previous buffer (toggle function)
- `:bd` <number>|<name> (stands for *buffer delete*)
- `:bufdo` → performs the following command for each opened buffer
  - :bufdo echo “bla” → will print “bla” in the amount of the opened buffers
- *working with hidden buffers* - they occur if you save changes to a buffer before quitting
 the program.  There are the following strategies to get rid of this problem:
  - `:w` - write the changes
  - `:e!` - restore the origin file
  - `:bd!` - remove buffer from the buffer list and revert all made changes
  - `:q!` - force vim to quit and discard all changes to the buffers


# Register
- **"f3Y** - yanking the next three lines in register f
- **"fp** - paste the contents of register f


# Different Stuff
- **J** - join two lines
- **gJ** - join lines without whitespace
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
- **:saveas <filename>** - save the changes you made on the new textfile
- **:close** - will close the actual window
- **g Ctrg-G** - count the words of a file and gives extensive overview of words and chars
- **:history** - print the last commands for the command-line
- **digraphs** - will display list of characters that are not on the keyboard (still don't know how
  to use them)
- **:map** - print all the mappings
- **C-V** - opens Visual Block select
- **<C-X><C-F>** - display a list of files in the current directory in insert mode


# ctags
- go to the root of the project and perform `ctags -R .` - this will create a tag file
- open vim and the generated **tags** file will be automatically selected
- **:tags** - show the list of tags you traversed through
- **Ctrl+]** - jump into the tag (will into the class, method or other declaration)
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
- vim --remote-silent: start only on window of vim even if you are in a different directory and
  wants to open that file


# help
- CTRG-] => jump into the hyperlink
- CTRG-T => jump back in your search history
- helpgrep <searchterm> => search all doc after the specified term (press :cwindow to see all
  matchings)
- :help ins-completion  => overview of commands to start autocompletion
- :help ‘complete’ =>
- :help i_CTRL-N
- :help i_CTRL-P
- :help :vglobal shows us how to perform an operation on all lines that don’t match the given
  pattern. In this case we delete lines that don’t match what we’re looking for.
- :help :global is how we can run a given command (in this case a :normal command) for each line that
  matches a pattern.  example :g/def/normal Ai -> will insert at the end of each line containing the
  def word a 'i'
