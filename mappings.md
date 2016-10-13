# Movement
- `h`, `j`, `k`, `l` ... left, below, top, right
- `<C-i>` ... trace movements forward in files (in method)
- `<C-o>` ... trace movements backwards in files (out method)
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
- in the commandline of vim
  - `<C-a>` ... beginning of a line
  - `<C-e>` ... go at the of a line
  - `<C-b>` ... go one word left
  - `<C-f>` ... go one word right
  - `<C-p>` ... move back in the command history
  - `<C-n>` ... move forward in the command history


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
- `u` | `U` ... make the selected text small | big in visual mode
- `~` ... toggle upper or lower case of character in normal mode and go to next char
- `x` ... cut character into default register
- `xp` ... transpose the next two characters ("character twiddeling")
- `p` ... *put* contents of default register after the cursor (is doing a paste)
- `P` ... *put* before the cursor (is doing a paste)
- `V` ... mark the whole line in visual mode
- `gV` ... reselect the text which was marked in visual mode before
  - `o` ... will go to the other end of the visual selection when using `gv`
- `cw` | `ce` ... delete the word with going into insert mode
- `cW` | `cE` ... delete the word with going into insert mode via whitespace separation (no words are counted)
- `ci"` ... delete everything whats inside the special sign `"` (others are `"", '', (), {}, []` ) and go into the edit mode
- `=` ... autoindent line
- `==` ... indent the actual line
- `=G` ... format the whole file
- `J` ... join two lines
- `gJ` ... join lines without whitespace
- `dd | dL` ... delete current line, no matter where the cursor is in the current line
- `<C-v>` ... **Visual block mode** select (when pressing `c` the selected text disappears and go in insert mode)
- `<C-a>` ... incerase any number by one (you can use motions, e.g. `9<C-a>`)
- `<C-x>` ... decrease any number by one
- `<C-x><C-t>` ... opens thesaurus
- `<C-r>%` ... insert the current filename in insert mode
- `.`  ... repeat the last made action
- `@:` ... repeat any last Ex command (pressing `@@` will repeat then the last command)
- `zR` ... `reduce` all folding (opens all foldings)
- `zM` ... `folds more` (closes all foldings of all levels)
- `zo` ... opens a single folding
- `zc` ... closes a single folding
- `:q` ... exit Vim don't save changes
- `:q!` ... force exit without saving
- `:wq | ZZ | :x` ... exit Vim and save changes
- `:w!` ... overwrites existing file
- `:split bla.txt` ... open file via horizontal split
- `:vsplit bla.txt` ... open file via vertical split
- `:e!` ... reload the file
- `vim <file> +<number>` ... open the file in the specified location
- `<C-r>=system("ls")` ... will insert the terminal output in the current file


# Delete, Cut, and copy
- `x` ... delete single character
- `dw` ... delete whole word (use motions: *2dw* deletes two words)
- `dd | dL` ... cut the whole line
- `D | d$` ... delete all characters after the cursor till EOL
- `C` ... deletes all characters after the cursor position and will go in insert mode
- `s` ... delete current char and go into insert mode
- `d` is an operator pending operator
- `df<char>` ... press the character until which should be deleted (**inclusive** the char)
- `dt<char>` ... delete till a char at start right in front of it (**exclusive** the char)
- `dst` ... deletes surrounding tag (good for HTML working)
- `yy` ... copy whole line (`Y` means the same)
- `yw` ... yank whole word
- `"+y` ... copy to clipboard (you have to be in visual mode)
- `"+p` ... paste from clipboard when being in normal mode
- `"f3Y` ... yanking the next three lines in register f
- `"fp` ... paste the contents of register f
- `:<range>y` ... will yank the specified lines of the range (good to prevent stupid moving just for yanking a single
  line)
- `:<range>copy{address}` ... copy the range and put it **below** the address (e.g. `:16copy15`); a shortcut for `copy`
  is `t` (to)


# Ctags
- `ctags -R .` ... creates a tag file
- `:tags` ... show the list of tags you traversed through
- `<C-]>` ... jump into the tag
- `<C-t>` ... reverse through tag history
- `g<C-]>` ... opens a a dialog for chosing the jump into the tag


# Autocompletion
- `<C-n>|<C-p>` ... Keyword autocompletion for next|previous matching
- `<C-x><C-n>` ... path autocompletion current buffer keywords
- `<C-x><C-i>` ... include file keywords
- `<C-x><C-o>` ... omnicomplete with context awareness
- `<C-x><C-k>` ... autocompletion from dictionary
- `<C-x><C-f>` ... filename completion for the current directory
- `<C-x><C-]>` ... tags file keywords (either in normal mode to search after all tags or in insert mode for
completion)
- `<C-c> | <C-e>` ... exit from autocompletion pop up
- `<C-x><C-t>` ... thesaurus lookup (only in insert mode)
- `<C-x><C-k>` ... dictionary lookup (only in insert mode)


# Search and Replace
- `/<pattern>` ... top-down search
- `/<CR>` ... jump forward to next match of same pattern
- `?<pattern>` ... bottom-up search
- `?<CR>` ... jump backward to next match of same pattern
- `*` ... search after the word under the cursor (`top-down`)
- `#` ... search after the word under the cursor (`bottom-up`)
- `n` ... jump to the next matching (direction `forward`)
- `N` ... jump to the previous matching (direction `backwards`)
- `f{char}` ... move forward to *first* {char} inclusive the {char}
- `t{char}` ... move forward to *til* {char} but stops left before the {char}
- `F{char}` ... backward to next occurrence of {char}
- `T{char}` ... backward to the character after the previous occurrence of {char}
- `;` ... repeat last search command **forward** (effective with `f{char}` finding commands)
- `,` ... repeat run last search command **backward** (effective with `f{char}` finding commands)
- `%s/.../<options>` ... will start the substitute function, `%` says to run substitute through the
  whole file
  - with range: `1,5s/this/that/g`
  - `/g` ... **global** and will replace all matchings at a line
  - `/c` ... **confirm** and makes prompt for each replacement
  - `/n` ... **number** and will print the number of replacements without performing the substitution
- `:help :vglobal` ... shows us how to perform an operation on all lines that don’t match the given
  pattern. In this case we delete lines that don’t match what we’re looking for.
- `:help :global` ... is how we can run a given command (in this case a :normal command) for each line that
  matches a pattern.  example :g/def/normal Ai -> will insert at the end of each line containing the
  def word a 'i' to
- `&` ... repeats the last substitution command `%s/.../<options>`
- `&&` ... the first `&` forms the Ex command which repeats the last :substitute command, the second
  `&` indicates, that the flags from the previous :substitute command should be reused
- Lazy searching:
  - mark the string in visual selection and press `*`
  - run `%s/<C-r>//g` -> the `<C-r>/` will place the last search pattern
  - alternatively, you can insert the contents of a register with `<C-r>{register}` -> remember that
    `0` stands for the last yanked line
- pasting a word from register to search for it:
  - in normal mode press `"ayw"`
  - go into search mode via `/`
  - press `Ctrl-R a` to paste the contents of register `a`
- open files of a certain type and do a replacement:
  - `args **/*.md` ... open all markdown files
  - `argdo :%s/test/bla/gce | update` ... run the replacement to all files in the buffer, `update` writes the file
    only if changes were made, the `e` silence errors from the substitution command


# Matching Patterns and literals
- `\v` ... enables very magic search, means that in the pattern after it all ASCII characters except
  '0'-'9', 'a'-'z', 'A'-'Z' and underscore have a special meaning.
- `\V` ... cancel special meanings of words for pattern matching (e.g. `., *, }, ...`) -> this kind
  of search is called verbatim searches, example: `/\Va.k.a` will match only `a.k.a`
- `\x` ... is a shortcut for the pattern `[0-9A-Fa-f]` -> you can learn more about them under `:h character-classes`
- use parentheses to match pattern and use them later with reference: example `/\v<(\w+)\_s+\1>`
  with `\1` we are referencing to the first match
- searching with word boundaries: you can use `<` for the beginning and `>` for the end
  - `/\<word\>` ... matching only the word which stands alone with <word> - no other words in front or after the word
  - `/<word\>` ... matching only words which ends on <word>
  - `/\<word\>` ... matching only words which starts with <word>
- `/word$` ... search after the word at the end of each line
- `/^word` ... search after the word at the beginning of each line
- `h.l` ... match all words, which starts with `h`, then any character and an `l`


# Command line
- `<C-Left>` ... move one word back
- `<C-Right>` ... move one word forward
- `<C-b>` ... move one character backwards
- `<C-f>` ... move one character forwards
- `<C-e>` ... move to the end of the line
- `<C-a>` ... move to the end of the line
- `<C-h>` ... delete back one character
- `<C-w>` ... delete the previous word
- `<C-c>` ... exit the command-line
- `:!` ... execute any extern command (like `ls`)
- `:r!` ... read the output of a Ex command and paste the the output in the current file (e.g. `:r! ls`)


# Insert mode
- `<C-t>` ... add shift
- `<C-d>` ... remove shift
- `<C-h>` ... delete back one character
- `<C-u>` ... delete all characters left from the cursor
- `<C-x-l>` ... line completion
- `<C-w>` ... delete the previous word
- `<C-k>{char1}{char2}` ... will insert digraphs (`:h digraphs`)
- `<C-r>+` ... paste from clipboard while in insert mode
- `<C-r>u` ... paste from register `u`
- `<C-r>/` ... insert the pattern of last search
- `<C-o>` ... go to Insert Normal mode, means that you run one normal command and after that go into insert mode


# Buffers
- `:ls` ... list all buffers
  - `#a` ... a buffer with no name
  - `%a` ... current buffer
  - `#` ... previous buffer
- `:b` <number>|<name> ... will open the buffer of the specified number or name (tab completion)
- `:bn` ... go to the next buffer
- `:bp` ... go to the previous buffer
- `:b#` ... jump to the previous buffer (toggle function)
- `:bd` <number>|<name> (stands for *buffer delete*)
- `:bufdo` ... performs the following command for each opened buffer
  - :bufdo echo “bla” ... will print “bla” in the amount of the opened buffers
- *working with hidden buffers* - they occur if you save changes to a buffer before quitting
 the program. There are the following strategies to get rid of this problem:
  - `:w` - write the changes
  - `:e!` - restore the origin file
  - `:bd!` - remove buffer from the buffer list and revert all made changes
  - `:q!` - force Vim to quit and discard all changes to the buffers


# Windows
- `<C-w> s` ... split window `horizontal`
- `<C-w> v` ... split window `vertical`
- `<C-w> c` ... close actual window
- `<C-w> [hjkl]` ... go to a specific window
- `adjust windows size`
  - `<C-w> _` ... the actual window horizontal max
  - `<C-w> |` ... the actual window vertical max
  - `<C-w> [+...-]` ... change window size incremental (`+` for increase and `⁻` for decrease) -> command-line window will grow
    or shrink
  - `<C-w =>` ... adjust all windows to the same size
- `:ccl` ... closes the quickfix windows
- `:lcl` ... closes the location windows (lint commands)


# Marks
- `m{a-zA-Z}` ... create a mark with the name a (marks will be saved for every file)
- `'a` ... jump to mark `a`
- `[a-z]` ... **local marks** (volatile)
- `[A-Z]` ... **global marks** (not volatile)
- `:marks` ... output marks of the actual file
- automatic marks - `.` ... location of last change
  - `^` ... location of last insertion
  - `<` ... start of last visual selection
  - `>` ... end of last visual selection


# Text objects
- `a) | ab` ... a pair of parentheses (including the parentheses)
- `i) | ib` ... inside of parentheses
- `a} | aB` ... a pair of braces (including the parentheses)
- `i} | aB` ... inside of braces
- `a], a>, a', a"` ... a pair of brackets, a pair of angle brackets, a pair of single quotes, a pair of double quotes
- `i], i>, i', i"` ... inside of brackets, inside of angle brackets, inside of single quotes, inside of double quotes
- `at` ... a pair of <xml>tags</xml>
- `it` ... inside of <xml>tags</xml>
- `iw | iW` ... current word|WORD
- `aw | aW` ... current word|WORD plus one space
- `is` ... current sentence
- `as` ... current sentence plus one space
- `ip` ... current paragraph between newline separator)
- `ap` ... current paragraph plus one blank line
- `ab` ... a block so only ( and ) parts and all whats between these delimiters


# Operators and motions -> speak editor sentences
- operators => motions are text objects because they move the cursor around
  - `c{motion}` ... change
  - `d{motion}` ... delete
  - `y{motion}` ... yank into register
- `cis` ... change inside sentence
- `ci"` ... change inside quote
- `vap` ... visual around paragraph (visually select this paragraph)
- `yaw` ... yank around word - copy the current word, no matter where your cursor is inside the current word
- `daw` ... deletes a word
- `vi}` ... select visual the content inside the `}` delimiter
- `ctX` ... change till X


# Different Things
- `"%p` ... insert the current filename in normal mode
- `'0` ...   when opening Vim and pressing this command will bring you back to last file you changed
- `ggVG` ... mark the whole text
- `gf` ... open the file which is under the cursor
- `g<C-g>` ...  count the words of a file and gives extensive overview of words and chars
- `q/` ... overview of all search patterns
- `q:` ... opens the command-line with history of Ex commands
- `<C-w>o` ... close all windows except the current one
- `<C-z>` ... will background the terminal Vim session and return to bash; `fg` resume the suspended job
- `:ascii | ga` ... displays the ASCII, Hex and Octal representation of the character under the actual cursor
- `:changes` ... shows all the changes to a local buffer
- `:map` ... over view of all mappings of the current session
- `:messages` ...  history of all events of the current session
- `:retab` ... replace all tabs of a file with spaces
- `:options` ...  opens a new window with all specified options you can set in Vim (even with nice explanations)
- `:args` ... prints a list of all opened files
- `:saveas <filename>` - save the changes you made on the new text file
- `:history` ...  print the last commands for the command-line
- `:redir @a> <CMD> redir END` ... will put the `<CMD>` in the register `a`
- `v/` is the opposite of `g/` ... "I want to match what I want to keep and delete the rest"
- `:history` print the last commands -> useful when writing a script
   `:history :-20,` will print the last 20 commands
- `:nohls` ... turns of highlighting words of pattern search
- `:wall` ... write all changes in all open buffers
- `:sort` ... normal alphabetical
- `:sort!` ... inverse alphabetical
- `:qall` ... quite all windows and will ask for unmodified changes
- `:tohtml` ... will call an internal plugin to convert markdown into an HTML file in an extra window
- `:only` ... close all windows except the actual one
- `digraphs` ...  will display list of characters that are not on the keyboard (still don't know how to use them)
- `gx` ... opens the URL under the browser
- `:help` ... open the help menu (dopple click on a link will go it)
  - `<C-]>` ... jump into the hyperlink
  - `<C-T>` ... jump back in your search history
- `:help functions-list` ... get an overview of all existing functions in Vimscript
- `:help <plugin-name>.txt` ... opens the documentation of a plugin
- `:helptags` ... will regenerate the helptags
- `:helpgrep <searchterm>` ... search all doc after the specified term (press :cwindow to see all matchings)
- `:help 'complete'` ... specifies how keyword completion works
- `:help ins-completion` overview of commands to start autocompletion


# Spellchecker
- `]s` ... place the cursor on the next error
- `[s` ... place the cursor on the previous error
- `z=` ... shows all correction to a word
- `zg` ... add a word to the dictionary
- `zuw` ... remove a word from the dictionary
- `<C-x>s` ... scan backwards from current cursor position in insert mode for errors
- `:set spelllang` ... activate the spell checker
- `:set spelling=de_20` ... setting the spell-language to 'neue deutsche Rechtschreibung'
- `:set spelling=de_19` ... setting the spell-language to 'alte deutsche Rechtschreibung'


# vim grammar
- repetition = 1..9 (non-zero-digit)
- motion = w | W | b | B | e | E | ^ | $ | { | %
- operator:
  - d ... delete
  - y ... yank
  - c ... change
- modifier = a | i
- object = w | W | s | p | [ | ] | { | } | ( | ) | " | ' | | \` | < | >
- text-obj = modifier object
- rule #1 = operator motion
  - example:
    - d$ ... delete till end of line
    - yW ... copy till end of WORD
- rule #2 = [repetition] operator [repetition] (motion | text-obj)
  - 3dw ... delete a word three times
  - d3w ... delete forward for three words
  - 3d5w ... delete forward for five words 3 times

# Hacks
- replace line ending through **\\\\:** `:%s/$/ \\\\/`
- replace **a = b** to **b = a:** `:%s/\(.*\)=\(.*\)/\2=\1`
- capture-group: :%s/(#\d\+)/http\1/gc
- replace number to certain URL: %s/\(#\d\+\)/\[\1\]\(http:\/\/github.com\/padrino\/padrino-framework\/issues\/\1\)/gc
- link to github URL: %s/\(@\w\+\)/\[\1\]\(http:\/\/github.com\/\1\)/gc


# Speak Vim
- verbs:
  v (visual),
  c (change),
  d (delete),
  y (yank/copy)
- modifiers:
  i (inside),
  a (around),
  t (till .. finds a character),
  f (find .. like till except including the char),
  / (search..find a string/regex)
- text object:
 w (word), s (sentence) p (paragraph) b (block/parentheses), t (tag, works for html/xml)


# Custom statusline

set statusline=%f            " name of the current file
set statusline+=\ %y         " Filetype of the file
set statusline+=\ %m         " show, if the file was modified
set statusline+=\%l/%L[%p%%] " l .. current line, L .. total line number, p ..  percentage
set statusline+=\ C:%v       " show the current column
set statusline+=\ B:#%n      " show the current buffer
