# Vim settings

I'm always eager to learn, but I can't remember everything. Here is the list of the plugins I'm using - it is a reminder
of the most important commands and settings for each plugin.


# Installation

Do not copy my *.vimrc* because they may not fit to your working style (see **Luca Pettes**
[wonderful article](http://lucapette.com/vim/rails/vim-for-rails-developers-lazy-modern-configuration)). But if you
would like to use this repository run the `install.sh` script.


# Plugins


## [autotag.vim](https://github.com/vim-scripts/AutoTag)
Whenever you save a file, it deletes all of its entries and invokes ctags in append mode.


## [blockit](https://github.com/sk1418/blockit)
Wrap text in block

- `'<,'>Block` ... works even in visual mode
- `..,..Block` ...  define a range where you want to have the block


## [calendar.vim](https://github.com/mattn/calendar-vim)
Opens a split with a calendar inside

- `:Calendar` ... opens a vertical split
- `<arrow-keys>` ... move around in the calendar
- `q` ... will close the calendar


## [easygrep](https://github.com/dkprice/vim-easygrep)
Makes search/replacing in your project a lot easier.

- `<leader>vv|vV` ... find word/whole word under the cursor
- `<leader>vr|vR` ... perform global search replace of word/whole word under cursor, with confirmation


## [delimitMate](https://github.com/Raimondi/delimitMate)
Semantic autoclose brackets.


## [fugitive](http://github.com/tpope/vim-fugitive)
Git wrapper.

- `:Gstatus` ... git status
  - `<C-n>` ... go to the next file
  - `<C-p>` ... go to the preview file
  - `-` ... git add/git reset depending where you are in the windows (mark multiple files in visual mode)
  - `<Enter>` ... will open the file in an extra window (use `:Gdiff` for a codereview)
- `:Gwrite` ... stage the current file to index
- `:Gcommit` ... git commit (press *wq* for send)
- `:Gmove` ... Rename the current file and the corresponding Vim buffer
- `:Gremove` ... git rm
- `:Gdiff` ... split the window and display the changes and for merging with vimdiff
  - `]c` ... jump to next hunk of the merge
  - `[c` ... jump to previous hunk of merge
  - `p` ... run `git add -p` for the current file
  - `:diffget` ... get the changes from the not active window
  - `:diffput` ... put the changes from the active window to the not active window
  - 3-way diffs:
    - `:diffget //2` ... get the changes from left (target branch = the branch you were in when you wanted to merge),          - `:diffget //3` ... get changes from the right (merge branch = the branch you want to merge),
    - `:diffupdate` ... clean up the views when having a file with many conflicts
    - `dp` ... if you are not in the working copy, you can use this command to put in the changes
    - when done with merging, run `:Gwrite` and `:only!` on the working copy to close all the other windows
- `:Gread` ... makes a git checkout and update vim's buffer to the content of HEAD
- `:Gblame` ... git blame
  - `o` ... to open a split showing the commit currently selected in the blame pane.
- `:Git` ... perform every other normal git command in the terminal
- `:Glog` ... git log
  - `:Glog -5` ... will open the last 5 commits (`:copen` will open the quickfix window for all commits)
  - `:Glog -- %` ... will open only the commits that touch the current file
- searching:
  - search working copy files: `:Ggrep <word>`
  - search commit messages: `:Glog --grep=fugitive`
  - search for words added or removed: `Glog -Sadd`


## [gitv](https://github.com/gregsexton/gitv)
gitk direclty in Vim

- `:Gitv` ... opens only gitv
- `:Gitv!` ... opens only commits which affects the current file
- `yc` ... yanks the SHA of the commit
- `co` ... performs a checkout of the commit on the currently focused commit
  - `D` ... diff the current open file with the focused file focused under the cursor

## [github-issues](https://github.com/jaxbot/github-issues.vim)
GitHub issue lookup support, press # to enable omnicompletion

- `:Gissues` ... will open a window with issues and you can browse the descriptions
- `:Giadd` ... add an issue to github


## [html5-syntax](https://github.com/othree/html5-syntax.vim)
HTML5 elements syntax highlighing.


## [lightline vim](https://github.com/itchyny/lightline.vim)
Awesome way to create a custom status line.

## [markdown-folding](https://github.com/nelstrom/vim-markdown-folding)
Folding by section headings.


## [neocomplete](https://github.com/Shougo/neocomplete.vim)
Amazing tool for keyword completion.


## [neosnippet](https://github.com/Shougo/neosnippet.vim)
Adds snippet support for Vim and makes use of neocomplete plugin.

- `NeoSnippetEdit` ... edit snippets of the current filetype


## [NERDTree](https://github.com/scrooloose/nerdtree)
Even Vim needs a file browser

- `m` ... choose which action to perform (add, move, copy, delete)
  - add / at the end to create a new directory
- `r` ... refresh the view
- `O` ... opens the node recursive from the parent node
- `t` ... opens th file in a new tab
- `p` ... jumps to the root tree
- `T` ... opens the file in a new tab and the focus will stay in the current window
- `x` ... closed the parent node, but leave the nodes above the node open (visual close)
- `X` ... closed all nodes which are under the actual node (physical close)
- `R` ... update the view
- press `?` in the NERDTree window
- `:NERDTreeFind` ... open the current file in the NERDTree and expand the tree to this file location


## [notes](https://github.com/xolox/vim-notes)
Perfect note taking.

- `:Note` ... starts a new note (you can specify the name of the note in the header)
- `:write or :update` save the notes
- `:RecentNotes` ... overview of the last created changes
- `:RelatedNotes` ... shows all notes according to actual heading in the note
- `:SearchNotes <pattern>` ... search after all notes containing the specified pattern/word
- `:edit note:<name-of-note>` ... you can edit notes (other commands: `:split`, `:tabedit`)
- `:NoteFromSelectedText` ... create a new node from the selected text
- `:DeleteNote` ... deletes the actual note
- `let g:notes_directory = '~/Documents/Notes'` ... define the directory where files should be
  saved
- it is possible to open notes directly from the command-line with **vim notes:collect**
- tags:
  - with @tag you can define own tags (they are useful for searching)
  - `:IndexTaggedNotes` ... creates new tags (for omnicomplete when @ is pressed)
  - `:ShowTaggedNotes` ... will show all notes which are specified with a certain tag


## [nyancat-vim](https://github.com/koron/nyancat-vim)
Nyancat rocks vim

- `:Nyancat` ... runs first version of it.
- `:Nyancat2` ... runs the second version.


## [open-browser](https://github.com/tyru/open-browser.vim)
Open the URI with `gx` (my custom mapping) in your default browser.


## [ri.vim](https://github.com/danchoi/ri.vim)
Browse ri documentation of Ruby files offline.

- `,r|,R` ... opens start/autocomplete window with horizontal|vertical split
- `K|,K` ... opens the search/autocomplete window and prefills it with the keyword under the cursor
- inside documentation window
  - `,,r` ... class/module/autocompletion window
  - `-` ... goes up from a method page into the parent class/module
  - `,G` ... brings you to the README of the Gem if it exists


## [speedating](https://github.com/tpope/vim-speeddating)
Fast way to increment all kind of numbers.

- `<C-a>` ... ++ number
- `<C-x>` ... -- number
- `:SpeedDatingFormat` ... shows the regular expression of possible formations
- `:SpeedDatingFormat {}` ... here you can specify the format which can be used to be recognized by the program


## [syntastic](https://github.com/scrooloose/syntastic)
Performs syntax check on various languages when saving.

- **Options**
  - `:SyntasticCheck` ... runs the syntax checker
  - `:SyntasticInfo` ... information about the current used syntax checkers and filetypes


## [surround](https://github.com/tpope/vim-surround)
Change quotes and all other delimiters.

- `ds"` ... stands for delete surround and will delete the surrounds
  - example: `{ :a => 1 }` after pressing `ds{` you will get `:a => 1`
- `cs("` ... change surroundings and will replace the first surrounding argument with the second surrounding
  - example: `(:a => 1)` after pressing `cs({` you will get `{ :a => 1 }`
- `ys` ... stands for "you surround" and the first argument specifies the scope and the second
  makes the replacement and the second using for wrapping up the first argument with the quotes
  - `ys2w` ... will wrapp two following words (`2w`) with underscores (`\*`)
  - `yss{` ... wraps the whole line
  - `ysiw` ... yank the inner word and in the command window add the tag you want to add
- how to quote whole string?
  - mark the string in visual mode (either normal mode with *v* or block mode with `V`), then
    press `s` and then the quote (`"", (), {}`) you want to have and it wraps the string in this


## [switch](https://github.com/AndrewRadev/switch.vim)
Switch segments of text with predefined definitions - good for changing values in tests.

- `:Switch` ... step on the predicate you want to change


## [tocdown](https://github.com/matthias-guenther/tocdown)
Display the headlines of a markdown document in an extra window.


## [tcomment_vim](https://github.com/tomtom/tcomment_vim)
An universable comment tool plugin.

- `gcc` ... toogles current line (work the same way in Visual mode)
- `gc{motion}` ... toogles comment with the specified motion


## [undotree](https://github.com/mbbill/undotree)
Display the undograph for a file.

- `:UndotreeToggle` ... turn on or off the toggle feature


## [unite](https://github.com/Shougo/unite.vim)
A very good and flexible plugin for searching and displaying information.


## [unite-radio](https://github.com/klen/unite-radio.vim)
Playing sounds in Vim.

- `:Unite radio <CR>` ... will open the predefined stations
- `:MStop` ... will stop the currently played song
- `:MPlay <url>` ... play the specified url


## [unite-tag](https://github.com/tsukkee/unite-tag)
Selecting and searching tags.

- `:Unite tag` ... search name for all tags
- `:Unite tag/file` ... select files including tags


## [unite-help](https://github.com/tsukkee/unite-help)
Opens unite window for searching.

- `:Unite help` ... will open the menue where you have autocompletion for all the tags


## [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
Add CSS3 syntax support.


## [vim-choosewin](https://github.com/t9md/vim-choosewin)
Cycle around in Vim panes the tmux style.

- `-` ... will call the choose-pane dialog


## [vim-easy-align](https://github.com/junegunn/vim-easy-align)
Auto indent files according to the pattern
  - Mark the area and press `Enter` => possible patterns are `<Space>`, `=`, `:`, `.`, `|`, `&`, and `,`


## [vim-exchange](https://github.com/tommcdo/vim-exchange)
Text exchange operator which can be combined with any motions.

- `cx{motion}` ... cx is the operator
- example: `cxiw` marks the word, pressing `.` will repeat the last command and exchange the word


## [vim-endwise](https://github.com/tpope/vim-endwise)
Automatically adds keywords like *end* to special constructs for all kinds of languages.


## [vim github theme](https://github.com/wikimatze/vim-github-theme)
My first light colorscheme for vim.


## [vim-gnupg](https://github.com/jamessan/vim-gnupg)
Transparent editing of gpg encrypted files.


## [vim-latex-folding](https://github.com/Eckankar/vim-latex-folding)
The only plugin you need when you are working with LaTeX.


## [vim-lexical](https://github.com/reedes/vim-lexical)
Custom dictionary, thesaurus, and spellchecking options for files or when calling a command.


## [vim-litecorrect](https://github.com/reedes/vim-litecorrect)
Lightweight auto correction for words.


## [vim-misc](https://github.com/xolox/vim-misc)
Extended Vim standard library needed for vim-notes plugin.


## [vim-move](https://github.com/matze/vim-move)
Move lines and selections up and down.


## [vim-plug](https://github.com/sheerun/vim-polyglot)
Package manager for Vim.

- `:PlugInstall` ... installs all the specified
- `:PlugClean` ... will remove all not used bundles


## [vim-poylglot](https://github.com/sheerun/vim-polyglot)
Loading language packs on demand - saves a lot of startup time.


## [vim-ruby](https://github.com/vim-ruby/vim-ruby)
Configuration files for editing and compiling Ruby - it even adds custom text-objects only for Vim.


- following commands can performed in *visual mode*
  - `am` ... "a method" select from 'def' till 'end'
  - `im` ... "inner method" select all inside the method exclude 'def' and 'end'
  - `aM` ... "a class" select from 'class' till 'end'
  - `iM` ... "inner class" select all inside the class exclude 'class' and 'end'
- the following commands can only performed *normal mode*
  - `]m` ... move to the beginning of the *next method*
  - `[m` ... move to the beginning of the *previous method*
  - `]]` ... move to the beginning of the **next** *module* or *class* definition
  - `[[` ... move to the beginning of the **previous** *module* or *class* definition


## [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
Switch seamlessly between tmux panes and Vim splits.


- `<Ctrl-h>` ... Left
- `<Ctrl-j>` ... Down
- `<Ctrl-k>` ... Up
- `<Ctrl-l>` ... Right


## [vimproc](https://github.com/Shougo/vimproc.vim.git)
For asynchronous command execution (need is used to search for file in bigger projects by the unite.vim plugin).


# License

This software is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).

© Matthias Günther <matthias@wikimatze.de>

