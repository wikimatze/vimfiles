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
Wrap text in block.

- `'<,'>Block` ... works even in visual mode
- `..,..Block` ...  define a range where you want to have the block


## [calendar.vim](https://github.com/mattn/calendar-vim)
Opens a split with a calendar inside.

- `:Calendar` ... opens a vertical split
- `<arrow-keys>` ... move around in the calendar
- `q` ... will close the calendar


## [easygrep](https://github.com/dkprice/vim-easygrep)
Makes search/replacing in your project a lot easier.

- `<leader>vv|vV` ... find word/whole word under the cursor
- `<leader>vr|vR` ... perform global search replace of word/whole word under cursor, with confirmation


## [delimitMate](https://github.com/Raimondi/delimitMate)
Semantic autoclose brackets.


## [fzf](https://github.com/junegunn/fzf)
Fuzzy finder for your shell as a Vim plugin


## [fugitive](http://github.com/tpope/vim-fugitive)
Git wrapper.

- `:Gstatus` ... git status
  - `<C-n>` ... go to the next file
  - `<C-p>` ... go to the previous file
  - `-` ... git add/git reset depending where you are in the windows (mark multiple files in visual mode)
  - `ca` ... makes git commit ammend
  - `D` ... makes diff
  - `ds` ... makes a horizontal
  - `dv` ... makes a vertical diff
  - `q` ... close :Gstatus
- `:Gwrite` ... stage the current file to index
- `:Gcommit` ... git commit (press *wq* for send)
- `:Gremove` ... git rm
- `:Gmove` ... rename the current file and add change to index
- `:Gpush` ... performs a git push
- `:Gread` ... makes will load the previous file status on the current file buffer
- `:Gdiff` ... split the window to see diff
  - `]c` ... jump to next hunk of the merge
  - `[c` ... jump to previous hunk of merge
  - `p` ... run `git add -p` for the current file
  - `:diffget` ... get the changes from the not active window
  - `:diffput` ... put the changes from the active window to the not active window
  - 3-way diffs:
    - `:diffget //LO` ... get the changes from left LOCAL (the file from the current branch)
    - `:diffget //RE` ... get changes from the right REMOTE (the file you are merging into your branch),
    - `:diffupdate` ... clean up the views when having a file with many conflicts
    - `dp` ... if you are not in the working copy, you can use this command to put in the changes
    - when done with merging, run `:Gwrite` and `:only!` on the working copy to close all the other windows
- `:Gblame` ... git blame
  - `q` ... close blame and return to blamed window
  - `o` ... opens commit horizontally, leaving blame window open
  - `<CR>` ... opens commit for currently blame commit, blame window is closed
- `:Git` ... perform every other normal git command in the terminal
- searching:
  - search working copy files: `:Ggrep <word>`
  - search commit messages: `:Glog --grep=fugitive`
  - search for words added or removed: `Glog -Sadd`


## [gitv](https://github.com/gregsexton/gitv)
A gitk/tig like git browser.

- `:gitv` ... opens only gitv
- `:gitv!` ... opens only commits which affects the current file
- `yc` ... yanks the SHA of the commit
- `co` ... performs a checkout of the commit on the currently focused commit
- `q` ... quits the window
- `:gitv -S<string>` ... look for differences that introduce or remove an instance of <string>
- custom mappings:
  - `nmap <leader>gv :Gitv --all<cr>`
  - `nmap <leader>gV :Gitv! --all<cr>`
  - `vmap <leader>gV :Gitv! --all<cr>`


## [github-issues](https://github.com/jaxbot/github-issues.vim)
GitHub issue lookup support, press # to enable omnicompletion

- `:Gissues` ... will open a window with issues and you can browse the descriptions
- `:Giadd` ... add an issue to github


## [markdown-folding](https://github.com/nelstrom/vim-markdown-folding)
Folding by section headings.


## [neocomplete](https://github.com/Shougo/neocomplete.vim)
Amazing tool for keyword completion.


## [neosnippet](https://github.com/Shougo/neosnippet.vim)
Adds snippet support for Vim and makes use of neocomplete plugin.

- `NeoSnippetEdit` ... edit snippets of the current filetype


## [NERDTree](https://github.com/scrooloose/nerdtree)
Perfect file browser for vim

- `m` ... choose which action to perform (add, move, copy, delete)
  - add / at the end to create a new directory
- `r` ... refresh the view
- `o|<Enter>` ... opens the directory (has toggle function)
- `O` ... opens the node recursive from the parent node
- `x` ... closed the parent node, but leave the nodes above the node open (visual close)
- `X` ... closed all nodes which are under the actual node (physical close) - `p` ... jumps to the root tree
- `C` ... change the directory to the current mode
- `U` ... go up to the directory
- `p` ... go up to parent direcory
- `P` ... go up to root directory
- `i` ... opens the file in a new split
- `t` ... opens th file in a new tab
- `R` ... update the view
- `?` ... opens help with all shortcuts
- `cd` ... change directories
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
- `,K|K` ... opens the search/autocomplete window and prefills it with the keyword under the cursor
- inside documentation window
  - `,,r` ... class/module/autocompletion window
  - `-` ... goes up from a method page into the parent class/module
  - `,G` ... brings you to the README of the Gem if it exists


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


## [tocdown](https://github.com/wikimatze/tocdown)
Display the headlines of a markdown document in an extra window.


## [tcomment_vim](https://github.com/tomtom/tcomment_vim)
An universable comment tool plugin.

- `gcc` ... toogles current line (work the same way in Visual mode)
- `gc{motion}` ... toogles comment with the specified motion


## [tmux-complete-vim](https://github.com/wellle/tmux-complete.vim)
Insert mode completion for neighbor tmux windows.

- `:Unite tmuxcomplete` ... opens a unite menu listing all entries or words from other tmux windows
- `:Unite tmuxcomplete/lines` ... opens a unite menu listing all entries or words from other tmux windows with their
  lines


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


## [vim-airline](https://github.com/bling/vim-airline)
Beautiful status and tab line.


## [vim-easy-align](https://github.com/junegunn/vim-easy-align)
Auto indent files according to the pattern

- Mark the area and press `Enter` => possible patterns are `<Space>`, `=`, `:`, `.`, `|`, `&`, and `,`


## [vim-endwise](https://github.com/tpope/vim-endwise)
Automatically adds keywords like *end* to special constructs for all kinds of languages.


## [vim-eunuch](https://github.com/tpope/vim-eunuch)
Useful Unix helper.

- `:SudoWrite` ... good when you want to save root files


## [vim-github-theme](https://github.com/wikimatze/vim-github-theme)
My first light colorscheme for vim.


## [vim-gnupg](https://github.com/jamessan/vim-gnupg)
Transparent editing of gpg encrypted files.


## [vim-latex-folding](https://github.com/Eckankar/vim-latex-folding)
The only plugin you need when you are working with LaTeX.


## [vim-lexical](https://github.com/reedes/vim-lexical)
Custom dictionary, thesaurus, and spellchecking options for files or when calling a command.

- `<C-x> <C-k>` ... opens the dictionary
- `<C-x> <C-t>` ... opens the thesaurus
- `<C-n>|<C-p>` ... navigate to the next or previous matching
- custom commands: `:BookGerman|:BookEnglish` ... will load my customized settings


## [vim-litecorrect](https://github.com/reedes/vim-litecorrect)
Lightweight auto correction for 300 words.

    Im -> I'm
    shouldnt -> shouldn't
    thats -> that's


## [vim-merginal](https://github.com/idanarye/vim-merginal)
Git branch management.

- `:Merginal` ... opens the extra window
- `C` ... checkout branch under the cursor
- `A` ... add a branch from the current checked out branch under the cursor
- `D` ... delete branch under the cursor
- `ps` ... push the current master on the branch under the cursor
- `pS` ... force git push
- `rn` ... prompt to rename the branch under the cursor
- `rb` ... starting rebase


## [vim-misc](https://github.com/xolox/vim-misc)
Extended Vim standard library needed for vim-notes plugin.


## [vim-move](https://github.com/matze/vim-move)
Move lines and selections up and down.


## [vim-plug](https://github.com/junegunn/vim-plug)
Package manager for Vim.

- `:PlugInstall` ... installs all the specified
- `:PlugClean` ... will remove all not used bundles
- `:PlugUpgrade` ... upgrade vim-plug automatically


## [vim-polyglot](https://github.com/sheerun/vim-polyglot)
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


## [vim-superman](https://github.com/jez/vim-superman)
Read man pages in Vim. Press `vman <Tab>` to get it working.


## [vim-testkey](https://github.com/botandrose/vim-testkey)
Press `Enter` to run tests. I've mapped the `Enter` into `<leader>t`.


## [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
Switch seamlessly between tmux panes and Vim splits.

- `<Ctrl-h>` ... Left
- `<Ctrl-j>` ... Down
- `<Ctrl-k>` ... Up
- `<Ctrl-l>` ... Right


## [vim-wordy](https://github.com/reedes/vim-wordy)
Uncover usage problems with your writing with marvelous commands.


- `WeakWordy` ... starts the mode for showing weak words like "of course", "however"
- `WordWordy` ... shows redundant words
- `Wordy <Tab>` ... cycle through the different mody
- `NextWordy` ... goes to the next mode
- `PrevWordy` ... goes to the next mode
- `NoWordy` ... will turn of the plugin


## [vimproc](https://github.com/Shougo/vimproc.vim.git)
For asynchronous command execution (need is used to search for file in bigger projects by the unite.vim plugin).


# License

This software is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).

© Matthias Günther <matthias@wikimatze.de>

