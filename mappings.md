# Movement
- `h`, `j`, `k`, `l` ...  left, below, top, right
- `w` ... go forward to the next word
- `W` ... go forward to the next word via whitespace separation (no words are counted)
- `e` ... go backwards to the end of the next word
- `E` ... go to the previous word via whitespace separation (no words are counted)
- `ge` ... go to the end of the previous word
- `gE` ... go to the end of the previous word via whitespace separation (no words are counted)
- `b` ... move backwards to the beginning of the word
- `B` ... jump to previous word via whitespace separation (no words are counted)
- `}` ... move to end of next paragraph or code block
- `{` ... move to start of previous paragraph or code block
- `)`... move the cursor forward to the *next sentence*
- `(` ... move the cursor forward to the *previous sentence*
- `%` ... jump to the fitting  brackets of _(, {, [_
- `10G` ... jump to line 10
- `$` ... go the end of a row (the buck ends here)
- `gg` ... go to the beginning of a file
- `G` ... go to the end of a file
- `^`| `0` | `_` ... go to the beginning of a line (think of anchored to the start)
- `ddp` ... will switch two lines
- `<C-U>` ... scroll upper (as a picture: scroll down half of the screen)
- `<C-D>` ... scroll down (as a picture: scroll up half of the screen)
- `<C-i>` ... trace movements forward in files
- `<C-o>` ... trace movements backwards in files
- `H` ... jump to the highest visible part
- `M` ... jump to the middle position of the visible part
- `L` ... jump to the lowest position of the visible part
- `<C-Left>` ... move one word back
- `<C-Right>` ... move one word forward
- `<C-b>` ... move to the beginning
- `<C-e>` ... move to the end
- `<C-c>` ... exit the command-line
- `20|` ... go to column 20 of the current line


# Edit
- `I` ... go to the beginning of line in edit mode
- `A` ... go at the end of line in edit mode
- `r` ... the actual position of the cursor will be replaced and go back into normal mode
- `R` ... stay in replace mode
- `o` ... go into a new line below the cursor in edit mode
- `O` ... insert new line in front of the current cursor position
- `s` ... replace the current character and stay in insert mode
- `u` ... undo last changes (`U` undo last changes of the last edited line)
- `<C-R>` ... redo the last change
- `p` ... *put* after the cursor
- `P` ... *put *before the cursor
- `u` | `U` ... make the selected text in visual mode small or big
- `xp` ... character twiddeling change the characters of two successive chars
- `V` ... mark the whole line in visual mode
- `gV` ... reselect the text which was marked in visual mode before
  - `o` ... will go to the other end of the visual selection
- `:wall` ... write all changes in all open buffers
- `'0` ...   when opening Vim and pressing this command will bring you back to last file you changed -
  handy if you have to shutdown and start the work again
- `"%p` ... insert the current filename in normal mode
- `<C-r>%` ... insert the current filename in insert mode
- `cw` ... change word
- `ggVG` ... mark the whole text
- `p` ... paste below the actual cursor position
- `P` ... paste before the actual cursor position
- `ci"` ... delete everything whats inside the special sign " (others are `"", '', (), {}, []` ) and go into the edit mode
- `d-Shift-g` ... delete all lines below the actual line of the cursors
- `==` ... indent the actual line
- `=G` ... format the whole file
- `J` ... join two lines
- `gJ` ... join lines without whitespace
- `gf` ... open the file which is under the cursor
- `~` ... makes upper- and lowercase of the character where the actual cursor is
- `<C-V>` ... opens Visual Block select
- `<C-X><C-F>` ... display a list of files in the current directory in insert mode
- `.`  ... repeat the last made action
- `:!` ... execute any extern command (like `ls`)
- `:r!` ... read the output of a command-line command and paste this in the text (e.g. `:r! ls`)
- `sort` ... normal alphabetical
- `sort!` ... inverse alphabetical
- `tabcompletion`
    - `<C-N>` ... go to the next matching
    - `<C-P>` ... go the previous matching


# Insert mode + completion
- `<C-w>` ... delete the previous word
- `<C-t>` ... add shift
- `<C-d>` ... remove shift
- `<C-n>` ... autocompletion
- `<C-x-C-l>` ... complete a whole line (good for matching complete function calls
- `<C-x-C-f>` ... browse current directory and display file names
- `<C-x-C-o>` ... omnicomplete based completion


# Search and Replace
- `/` ... just type in the searched word (`top-down`)
- `?` bottom-up search
- `*` ... search after the word under the cursor (`top-down`)
- `#` ... search after the word under the cursor (`bottom-up`)
- `n` ... jump to the next matching (direction `forward`)
- `N` ... jump to the previous matching (direction `backwards`)
- single-character search:
    - `fx` ... move forward to *first* character x inclusive (`Fx` move backwards)
    - `tx` ... move forward to *til* character x but stops left before the sign (`Tx` move backwards)
- `/<word\>` ... matching only words which ends on <word>
- `/\<word\>` ... matching only words which starts with <word>
- `/\<word\>` ... matching only the word which stands alone with <word> - no other words in front
  or after the word
- `%s/.../<options>` ... will start the substitute function
    - with range: `1,5s/this/that/g`
    - `/g` ... will replace all matchings at a line
    - `/c` ... makes prompt for each replacement
    - `/e` ... no finding a match is no error
- Regex:
  - `/word$` ... search after the word at the end of each line
  - `/^word` ... search after the word at the beginning of each line
  - `h.l` ... match all words, which starts with `h`, then any character and an `l`


# Close
- `:q` ... exit Vim and don't save changes
- `:w!` ... overwrites existing file
- `:q!` ... exit Vim
- `:wq` ... exit Vim and save changes
- `:x` ... save all changes and terminate Vim
- `:qall` ... quite all windows and will ask for unmodified changes
- `ZZ` ... shortcut for :wq
- `ZQ` ... shortcut for :wq!


# Delete, Cut, and copy
- `x` ... delete single character
- `dw` ... delete whole word (Motion: *2dw* will delete two words)
- `dd` ... cut the whole line
- `ce` ... delete the word and go into insert word
- `cE` ... delete the word and go into insert word via whitespace separation (no words are counted)
- `D` ... delete all characters after the cursor till EOL
- `df<char>` ... press the character until which should be deleted (**inclusve** the char)
  - `dt<char>` ... delete till a char at start right in front of it (**exclusive** the char)
  - `d` is an operator pending operator
- `C` ... deletes all characters after the cursor position and will go in insert mode
- `d$` ... delete till the EOL
- `s` ... delete current char and go into insert mode
- `yy` ... copy whole line (`Y` means the same)
- `yw` ... yank whole word
- `"+y` ... copy to clipboard (you have to be in visual mode)
- `"+p` ... paste from clipboard
- `"f3Y` ... yanking the next three lines in register f
- `"fp` ... paste the contents of register f


# Folding
- `zR` ... `reduce` all folding (opens all foldings)
- `zM` ... `folds more` (closes all foldings of all levels)
- `zo` ... opens a single folding
- `zc` ... closes a single folding


# Windows
- `<C-W s>` ... split window `horizontal`
- `<C-W v>` ... split window `vertical`
- `<C-W c>` ... close actual window
- `<C-W [hjkl]>` go to a specific window
- `:only` ... close all windows except the actual one
- `adjust windows size`
  ... `<C-w _>` ... make the actual window horizonat max
  ... `<C-w |>` ... make the actual window vertical max
  ... `<C-w [+...]>` ... change the size incremental
  ... `<C-w =>` ... adjust all windows to the same size
- `:sp bla.txt` ... open file via horizontal split
- `:vsp bla.txt` ... open file via vertical split


# Marks
- `ma` ... create a mark with the name a (marks will be saved for every file)
- `'a` ... jump to mark a
- `local marks` ... range from `[a-z]` (volatile)
- `global marks` ... range from `[A-Z]` (not volatile)
- `:marks` ... output marks of the actual file


# Help
- **:help** - open the help menu (dopple click on a link will go it)
- **:help <plugin-name>.txt** - opens the documentation of a plugin
- **:helptags** - will regenerate the helptags


# Buffer
- `:ls` ... list all buffers
  - `#a` ... stands for a no name buffer
  - `%a` ... stands for the current buffer
  - `#` ... stands for the previous buffer
- `:b` <number>|<name> ... will open the buffer of the specified number or name
- `:bn` ... go to the next buffer
- `:bp` ... go to the previous buffer
- `:b#` ... jump to the previous buffer (toggle function)
- `:bd` <number>|<name> (stands for *buffer delete*)
- `:bufdo` ... performs the following command for each opened buffer
  - :bufdo echo “bla” ... will print “bla” in the amount of the opened buffers
- *working with hidden buffers* - they occur if you save changes to a buffer before quitting
 the program.  There are the following strategies to get rid of this problem:
  - `:w` - write the changes
  - `:e!` - restore the origin file
  - `:bd!` - remove buffer from the buffer list and revert all made changes
  - `:q!` - force vim to quit and discard all changes to the buffers


# Different Stuff
- `:map` ... over view of all mappings of the current session
- `:messages` ...  history of all events of the current session
- `:ascii` ... di splays the ASCII, Hex und Octal representation of the character under the actual
 cursor
- `:retab` ... re place all tabs of a file with spaces
- `:options` ...  opens a new window with all specified options you can set in Vim (even with nice
  explanations)
- `:args` ... pri nts a list of all opened files
- `:saveas <filename>` - save the changes you made on the new textfile
- `:history` ...  print the last commands for the command-line
- `g <C-G>` ...  count the words of a file and gives extensive overview of words and chars
- `digraphs` ...  will display list of characters that are not on the keyboard (still don't know how
  to use them)
- `:redir @a> <CMD> redir END` ... will put the `<CMD>` in the register `a`
- `v/` is the opposite of `g/` ... “I want to match what I want to keep and delete the rest
- `:history` print the last commands -> usefull when writing a script
   `:history :-20,` will print the last 20 commands


# Spellchecker
- `]s` ... place the cursor on the next error
- `[s` ... place the cursor on the previous error
- `z=` ... shows all correction to a word
- `zg` ... add a word to the dictionary
- `zw` ... remove a word from the dictionary
- `:set spelllang` ... activate the spell checker
- `set spelling=de_20` ... setting the spell-language to 'neue deutsche Rechtschreibung'
- `set spelling=de_19` ... setting the spell-language to 'alte deutsche Rechtschreibung'


# Text object selection
- `as` ... a sentence (example `vas` select the current sentence inclusive leading and trailing
  whitespaces)
- `is` ... inner sentence (example `vis` select the only the whole text no trailing whitespaces)
- `ap` ... a paragraph (example `dap` select a whole text paragraph between \n separaters)
- `ab` ... a block so only ( and ) parts and all whats between these delimiters
- `ib` ... inner block, so only the parts within ( and ) delimiter
- `aB` ... a block so only { and } parts and all whats between these delimiters
- `iB` ... inner block, so only the parts within { and } delimiter
- `at` ... a tag select everything between HTML tag (inclusive the tags)
- `it` ... inner tag select only what within a HTML tag
- `a"` ... a quote, select a complete quote of ""
- `i"` ... inner quote, select only the inner quote of ""
- `a'` ... a quote, select a complete quote of ''
- `i'` ... inner quote, select only the inner quote of ''


# Speak editor sentences
- `cis` (change inside sentence): change current sentence
- `ci"` (change inside quote): change a string inside quotes
- `vap` (visual around paragraph): visually select this paragraph
- `yaw` (yank around word): copy the current word, no matter where your cursor is inside the current
  word
- `ctX` change till X (any character)


# Ctags
- go to the root of the project and perform `ctags -R .` - this will create a tag file
- `:tags` ... show the list of tags you traversed through
- `<C-]>` ... jump into the tag (will into the class, method or other declaration)
- `<C-t>` ... will go to the previous declaration of the method


# LaTeX-Suite
- `,ll` ... compile the actual document (normally in dvi format)
- `,lv` ... opens the compiled .dvi file with xdvi
- `,lj` ... opens the compiled .dvi file just in the place where your cursor is the tex document
 you are compiling
- `Ctrl+Shift...j` ... jumps to the placeholder in the document
- `n` ... jumps to the next error
- `b` ... jumps to the previous error
- `working with multiple files`
  - create a empty file with the name `<yourmain>.tex`
  - after that you can normally compile every included other tex document (if you are splitting up your tex...project)
- `forward search` (the shortcut for this is `,lv` ... the rest is the theoretical explanation of
 it)
  - compile your tex-document normally
  - start the `\ls` mode
  - where the cursor is, this place will be displayed in the .dvi file
- `inverse (reverse) search`
  - `<C-Left>` left mouse click in the .dvi file this location will be opend in the source file
- `Links`
  - http://vim":http://vim...latex.sourceforge.net/documentation/latex-suite.html#latex-project-example
  - http://vim":http://vim...latex.sourceforge.net/documentation/latex-suite-quickstart
# Help
- `<C-]>` ... jump into the hyperlink
- `<C-T>` ... jump back in your search history
- `:helpgrep <searchterm>` ... search all doc after the specified term (press :cwindow to see all matchings)
- `:help ins-completion` overview of commands to start autocompletion
- `:help 'complete'` ... specifies how keyword completion works
- `:help :vglobal` ... shows us how to perform an operation on all lines that don’t match the given
  pattern. In this case we delete lines that don’t match what we’re looking for.
- `:help :global` ... is how we can run a given command (in this case a :normal command) for each line that
  matches a pattern.  example :g/def/normal Ai -> will insert at the end of each line containing the
  def word a 'i' to


# Hacks
- replace line ending through **\\\\:** `:%s/$/ \\\\/`
- replace **a = b** to **b = a:** `:%s/\(.*\)=\(.*\)/\2=\1`

