# Movement
- `h`, `j`, `k`, `l` ...  left, below, top, right
- `<C-o>` ... trace movements backwards in files
- `<C-i>` ... trace movements forward in files
- `w` ... forwards to the next word
- `W` ... forwards to the next word via whitespace separation (no words are counted)
- `e` ... forwards to the end of the next word
- `E` ... forwards to the end of the next word via whitespace separation (no words are counted)
- `b` ... backwards to the beginning of the word
- `B` ... backward to the beginning of the word via whitespace separation (no words are counted)
- `ge` ... backward to the end of the previous word
- `gE` ... backward to the end of the previous word via whitespace separation (no words are counted)
- `%` ... jump to the fitting brackets of _(, {, [_
- `10G` ... jump to line 10
- `20|` ... go to column 20 of the current line
- `^`| `0` | `_` ... go to the beginning of a line (think of anchored to the start)
- `$` ... go the end of a row (the buck ends here)
- `<C-u>` ... scroll **upper** (as a picture: scroll down half of the screen)
- `<C-d>` ... scroll **down** (as a picture: scroll up half of the screen)
- `<C-b>` ... scroll backwards a whole page (not only the visible part)
- `<C-f>` ... scroll forwards a whole page (not only in the visible part)
- `}` ... move to end of next paragraph or code block
- `{` ... move to start of previous paragraph or code block
- `)`... move the cursor forward to the next sentence
- `(` ... move the cursor forward to the previous sentence
- `gg` ... go to the beginning of a file (beginning of the giggle)
- `G` ... go to the end of a file
- `ddp` ... will switch two lines


# Edit
- `I` ... go to the beginning of line in edit mode
- `A` ... go at the end of line in edit mode
- `o` ... go into a **new line below** the cursor in edit mode
- `O` ... insert **new line in front** of the current cursor position
- `s` ... replace the current character and stay in insert mode - you can add as many words as you like
- `C` ... replace the current character till the rest of the line with characters -> press ESC to go into normal mode
- `r` ... replace only the actual char under the cursor after that back to normal mode
- `R` ... **replace mode** - stay in this mode and all following words will be replaced
- `u` ... undo last changes (`U` undo last changes of the last edited line)
- `<C-R>` ... redo the last change
- `p` ... *put* after the cursor (is doing a paste)
- `P` ... *put*before the cursor (is doing a paste)
- `u` | `U` ... make the selected text small | big in visual mode
- `~` ... toggle upper or lower case of character in normal mode and go to next char
- `xp` ... transpose the next two characters ("character twiddeling")
- `V` ... mark the whole line in visual mode
- `gV` ... reselect the text which was marked in visual mode before
  - `o` ... will go to the other end of the visual selection when using `gv`
- `cw` ... change word
- `ci"` ... delete everything whats inside the special sign `"` (others are `"", '', (), {}, []` ) and go into the edit mode
- `=` ... autoindent line
- `==` ... indent the actual line
- `=G` ... format the whole file
- `J` ... join two lines
- `gJ` ... join lines without whitespace
- `dd | dL` ... delete current line, no matter where the cursor is in the current line
- `<C-v>` ... **Visual Block** select (when pressing `c` the selected text disappears and go in insert mode)
- `<C-a>` ... will increment number by one (you can use motions, e.g. `10<C-a>`)
- `<C-x>` ... will increment number by one
- `<C-r>%` ... insert the current filename in insert mode
- `.`  ... repeat the last made action
- `@:` ... repeat any last Ex command


# Command line
- `<C-Left>` ... move one word back
- `<C-Right>` ... move one word forward
- `<C-b>` ... move one character backwards
- `<C-f>` ... move one character forwards
- `<C-e>` ... move to the end of the line
- `<C-a>` ... move to the end of the line
- `<C-c>` ... exit the command-line
- `:!` ... execute any extern command (like `ls`)
- `:r!` ... read the output of a Ex command and paste the the output in the current file (e.g. `:r! ls`)


# Insert mode
- `<C-h>` ... delete back one character
- `<C-w>` ... delete the previous word
- `<C-o>` ... go to Insert Normal mode, means that you run one normal command and after that go into insert mode
- `<C-t>` ... add shift
- `<C-d>` ... remove shift
- `<C-k>{char1}{char2}` ... will insert digraphs (`:h digraphs`)
- `<C-r>+` ... paste from clipboard
- `<C-r>u` ... paste from register `u`
- `<C-r>/` ... insert the pattern of last search


# Autocompletion
- `<C-n> | <C-p>` ... autocompletion for next|previous matching
- `<C-x><C-n>` ... current buffer keywords
- `<C-x><C-i>` ... include file keywords
- `<C-x><C-]>` ... tags file keywords
- `<C-x><C-k>` ... dictionary lookup
- `<C-x><C-l>` ... complete a whole line (good for matching complete function calls
- `<C-x><C-f>` ... filename completion for the current directory
- `<C-x><C-o>` ... omnicomplete with context awareness
- `<C-e>` ... exit from autocompletion popup


# Search and Replace
- `/<pattern>` ... top-down search
- `/<CR>` ... jump forward to next match of same pattern
- `?<pattern>` ... bottom-up search
- `?<CR>` ... jump backward to next match of same pattern
- `<C-r><C-w>` ... autocomplete when searching for words
- `f{char}` ... forward to next occurrence of {char}
- `t{char}` ... forward to the character before next occurrence of {char}
- `F{char}` ... backward to next occurrence of {char}
- `T{char}` ... backward to the character after the previous occurrence of {char}
- `;` ... will run the last search command forward
- `,` ... will run the last search command backward
- `*` ... search after the word under the cursor (`top-down`)
- `#` ... search after the word under the cursor (`bottom-up`)
- `n` ... jump to the next matching (direction `forward`)
- `N` ... jump to the previous matching (direction `backwards`)
- single-character search:
    - `fx` ... move forward to *first* character x inclusive (`Fx` move backwards)
    - `tx` ... move forward to *til* character x but stops left before the sign (`Tx` move backwards)
- `%s/.../<options>` ... will start the substitute function, `%` says to run substitute through the
  whole file
  - with range: `1,5s/this/that/g`
  - `/g` ... stands for **global** and will replace all matchings at a line
  - `/c` ... stands for **confirm** and makes prompt for each replacement
  - `/n` ... stands for **number** and will print the number of replacements without performing the
    substitution
  - `/e` ... stands for **error** no finding a match is no error
- Lazy searching:
  - mark the string in visual selection and press `*`
  - run `%s/<C-r>//g` -> the `<C-r>/` will place the last search pattern
  - alternatively, you can insert the contents of a register with `<C-r>{register}` -> remember that
    `0` stands for the last yanked line
- `&` ... repeats the last substitution command `%s/.../<options>`
- `&&` ... the first `&` forms the Ex command which repeats the last :substitute command, the second
  `&` indicates, that the flags from the previous :substitute command should be reused


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
- `"+p` ... paste from clipboard when being in normal mode
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
- `m{a-zA-Z}` ... create a mark with the name a (marks will be saved for every file)
- `'a` ... jump to mark `a`
- `local marks` ... range from `[a-z]` (volatile)
- `global marks` ... range from `[A-Z]` (not volatile)
- `:marks` ... output marks of the actual file
- automatic marks - `.` ... location of last change
  - `^` ... location of last insertion
  - `<` ... start of last visual selection
  - `>` ... end of last visual selection


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
  - `:q!` - force Vim to quit and discard all changes to the buffers


# Different Stuff
- `:changes` ... shows all the changes to a local buffer
- `:map` ... over view of all mappings of the current session
- `:messages` ...  history of all events of the current session
- `:ascii | ga` ... displays the ASCII, Hex and Octal representation of the character under the actual
 cursor
- `:retab` ... re place all tabs of a file with spaces
- `:options` ...  opens a new window with all specified options you can set in Vim (even with nice
  explanations)
- `:args` ... prints a list of all opened files
- `:saveas <filename>` - save the changes you made on the new text file
- `:history` ...  print the last commands for the command-line
- `g <C-G>` ...  count the words of a file and gives extensive overview of words and chars
- `digraphs` ...  will display list of characters that are not on the keyboard (still don't know how
  to use them)
- `:redir @a> <CMD> redir END` ... will put the `<CMD>` in the register `a`
- `v/` is the opposite of `g/` ... “I want to match what I want to keep and delete the rest
- `:history` print the last commands -> useful when writing a script
   `:history :-20,` will print the last 20 commands
- `q/` ... opens the command-line with history of searches
- `q:` ... opens the command-line with history of Ex commands
- `<C-z>` ... will background the terminal Vim session and return to bash; `fg` resume the suspended job
- `:nohls` ... turns of highlighting words of pattern search
- `<C-w>o` ... close all windows except the current one
- `:wall` ... write all changes in all open buffers
- `sort` ... normal alphabetical
- `sort!` ... inverse alphabetical
- `"%p` ... insert the current filename in normal mode
- `'0` ...   when opening Vim and pressing this command will bring you back to last file you changed
- `ggVG` ... mark the whole text
- `gf` ... open the file which is under the cursor


# Spellchecker
- `]s` ... place the cursor on the next error
- `[s` ... place the cursor on the previous error
- `z=` ... shows all correction to a word
- `zg` ... add a word to the dictionary
- `zw` ... remove a word from the dictionary
- `<C-x>s` ... scan backwards from current cursor position in insert mode for errors
- `:set spelllang` ... activate the spell checker
- `set spelling=de_20` ... setting the spell-language to 'neue deutsche Rechtschreibung'
- `set spelling=de_19` ... setting the spell-language to 'alte deutsche Rechtschreibung'


# Text object
- `a) | ab` ... a pair of parentheses
- `i) | ib` ... inside of parentheses
- `a} | aB` ... a pair of braces
- `i} | aB` ... inside of braces
- `a], a>, a', a"` ... a pair of brackets, a pair of angle brackets, a pair of single quotes, a pair of double quotes
- `i], i>, i', i"` ... inside of brackets, inside of angle brackets, inside of single quotes, inside of double quotes
- `at` ... a pair of <xml>tags</xml>
- `it` ... inside of <xml>tags</xml>
- `iw | iW` ... current word|WORD
- `aw | aW` ... current word|WORD plus one space
- `is` ... current sentence
- `as` ... current sentence plus one space
- `ip` ... current paragraph (paragraph between newline separater)
- `ap` ... current paragraph plus one blank line (paragraph between newline separater)
- `ab` ... a block so only ( and ) parts and all whats between these delimiters


# Operator and motions -> speak editor sentences
- operators => motions are text objects
  - `c{motion}` ... change
  - `d{motion}` ... delete
  - `y{motion}` ... yank into register
- `cis` (change inside sentence): change current sentence
- `ci"` (change inside quote): change a string inside quotes
- `vap` (visual around paragraph): visually select this paragraph
- `yaw` (yank around word): copy the current word, no matter where your cursor is inside the current word
- `ctX` change till X (any character)
- `daw` ... deletes a word
- `vi}` ... select visual the content inside the `}` delimiter


# Ctags
- `ctags -R .` ... will create a tag file
- `:tags` ... show the list of tags you traversed through
- `<C-]>` ... jump into the tag
- `g<C-]>` ... opens a a dialog for chosing the jump into the tag
- `<C-t>` ... reverse through tag history


# LaTeX-Suite
- `,ll` ... compile the actual document (normally in dvi format)
- `,lv` ... opens the compiled .dvi file with xdvi
- `,lj` ... opens the compiled .dvi file just in the place where your cursor is the tex document
 you are compiling
- `Ctrl+Shift...j` ... jumps to the placeholder in the document
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


# Matching Patterns and literals
- `\v` ... enables very magic search, means that in the pattern after it all ASCII characters except
  '0'-'9', 'a'-'z', 'A'-'Z' and '_' have a special meaning.
- `\V` ... cancel special meanings of words for pattern matching (e.g. `., *, }, ...`) -> this kind
  of search is called verbatim searches, example: `/\Va.k.a` will match only `a.k.a` and no
  `backward`
- `\x` ... is a shortcut for the pattern `[0-9A-Fa-f]` -> you can learn more about them under `:h
  character-classes`
- use parentheses to match pattern and use them later with reference: example `/\v<(\w+)\_s+\1>`
  with `\1` we are referencing to the first match
- searching with word boundaries: you can use `<` for the beginning and `>` for the end
  - `/\<word\>` ... matching only the word which stands alone with <word> - no other words in front or after the word
  - `/<word\>` ... matching only words which ends on <word>
  - `/\<word\>` ... matching only words which starts with <word>


# Hacks
- replace line ending through **\\\\:** `:%s/$/ \\\\/`
- replace **a = b** to **b = a:** `:%s/\(.*\)=\(.*\)/\2=\1`

