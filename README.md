# Vim settings

I'm always eager to learn, but I can't remember everything. Here is the list of the plugins I'm using - it is a reminder
of the most important commands and settings for each plugin.


# Installation

```sh
$ git clone https://github.com/wikimatze/vimfiles.git ~/.vim && ln -sf ~/.vim/.vimrc ~/.vimrc
```

Next, start vim and run `:PlugInstall` - happy vimming!


# Plugins


## [ale](https://github.com/w0rp/ale "ale")
Asynchronous Lint Engine.


## [bclose.vim](https://github.com/rbgrouleff/bclose.vim "bclose.vim")
Need this plugin to close the ranger window with `q`.


## [far.vim](https://github.com/brooth/far.vim)
A find and replace plugin.

- `:Far <word> <replace-with> **/*.<filetype> [params]` ... will start the replacement for the given filetype
- `:F* {pattern} {file-mask} [params]` ... will just search after the word without the replacement part
- `:Fardo` ... will do the replacement
- `:Farundo` ... undo the last `:Fardo` replacement.
- `:Refar` ... do the used replacement again with the chance to change option's
- `:Farp` ... will ask questions for interactive replacement
- in Far buffer the following shortcuts are active
  - `x|X` ... will exclude the/all file(s) under the cursor
  - `i|I` ... will include the/all file(s) under the cursor
  - `t` ... will toggle exclude/include file under the cursor
  - `<CR>` ... jump to the source of the match
  - `<CR-j>|<CR-k>` ... scroll down/up the preview window


## [fzf](https://github.com/junegunn/fzf)
Fuzzy finder for your shell as a Vim plugin.


## [fugitive](http://github.com/tpope/vim-fugitive)
Git wrapper.

- `:Gstatus` ... git status
  - `<C-n>` ... go to the next file
  - `<C-p>` ... go to the previous file
  - `-` ... git add/git reset depending where you are in the windows (mark multiple files in visual mode)
  - `cc` ... make git commit
  - `ca` ... makes git commit ammend
  - `D` ... makes diff
  - `ds` ... makes a horizontal
  - `dv` ... makes a vertical diff
  - `q` ... close :Gstatus
  - `p` ... run `git add -p` for the current file
- `:Gwrite` ... stage the current file to index
- `:Gcommit` ... git commit (press *wq* for send)
- `:Gremove` ... git rm
- `:Gmove` ... rename the current file and add change to index
- `:Gpush` ... performs a git push
- `:Gread` ... makes will load the previous file status on the current file buffer
- `:Gdiff` ... split the window to see diff
  - `]c` ... jump to next hunk of the merge
  - `[c` ... jump to previous hunk of merge
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
- `co` ... performs a checkout of the commit on the currently focused commit
- `yc` ... yanks the SHA of the commit
- `q` ... quits gitv
- `:Gitv -S<string>` ... look for differences that introduce or remove an instance of <string>
- custom mappings:
  - `nmap <leader>gv :Gitv --all<cr>`
  - `nmap <leader>gV :Gitv! --all<cr>`


## [IndexSearch](https://github.com/vim-scripts/IndexedSearch)
Redefines the search `(/,?)` and creates custom messages about how many hits there are.


## [vim-markdown](https://github.com/plasticboy/vim-markdown)
Perfect managing markdown file.


## [lexima](https://github.com/cohama/lexima.vim)
Semantic autoclose, delete brackets, ...


## [neocomplete](https://github.com/Shougo/neocomplete.vim)
Amazing tool for keyword completion.


## [neosnippet](https://github.com/Shougo/neosnippet.vim)
Adds snippet support for Vim and makes use of neocomplete plugin.

- `NeoSnippetEdit` ... edit snippets of the current filetype


## [open-browser](https://github.com/tyru/open-browser.vim)
Open the URI with `gx` (my custom mapping) in your default browser.


## [ranger.vim](https://github.com/francoiscabrol/ranger.vim)
Ranger intergration for vim and neovim.




## [surround](https://github.com/tpope/vim-surround)
Change quotes and all other delimiters.

- `ds"` ... stands for delete surround and will delete the surrounds
  - example: `{ :a => 1 }` after pressing `ds{` you will get `:a => 1`
- `cs("` ... change surroundings and will replace the first surrounding argument with the second surrounding
  - example: `(:a => 1)` after pressing `cs({` you will get `{ :a => 1 }`
- `ys` ... "you surround" and the first argument specifies the scope (can be a motion) and the second
  makes the replacement and the second using for wrapping up the first argument with the quotes
  - `ys2w` ... will wrapp two following words (`2w`) with underscores (`\*`)
  - `yss{` ... wraps the whole line
  - `ysiw` ... yank the inner word and in the command window add the tag you want to add
- how to quote whole string?
  - mark the string in visual mode (either normal mode with *v* or block mode with `V`), then
    press `s` and then the quote (`"", (), {}`) you want to have and it wraps the string in this


## [caw.vim](https://github.com/tyru/caw.vim)
Vim comment plugin.

- `gcc` ... toogles current line
- `gca` ... at comment at end of the line


## [quick-scope](https://github.com/unblevable/quick-scope "quick-scope")
Lightning fast left-right movement in Vim


## [tmux-complete-vim](https://github.com/wellle/tmux-complete.vim)
Insert mode completion for neighbor tmux windows.

- `:Unite tmuxcomplete` ... opens a unite menu listing all entries or words from other tmux windows
- `:Unite tmuxcomplete/lines` ... opens a unite menu listing all entries or words from other tmux windows with their
  lines


## [undotree](https://github.com/mbbill/undotree)
Display the undo graph for a file.

- `:UndotreeToggle` ... turn on or off the toggle feature


## [tagbar](http://majutsushi.github.com/tagbar)
Display the structure of the code.

- `:TagbarToggle` ... opens or close the tagbar whether it was closed or open
- `:TagbarOpen` ... open view tagbar
- `:TagbarOpenAutoClose` ... opens the tagbar and close it after a tag was selected
- `x` ... will zoom in/out the tagbar window
- `q` ... quit yankring window
- `?` ... will print help


## [vimagit](https://github.com/jreybert/vimagit)
A new way to use git in Vim.

- `:Magit` ... opens the window
- `N|P` ... jumps to the next/previous hunk
- `S` ... stage the current selected hunk
  - works even in visual mode!
- `L` ... stage the current line
- `F` ... stage/unstage the whole file at cursor position
- `E` ... will open the file in
- `R` ... will refresh the magit window
- `M` ... mark the current line for staging and press `S` to chunk all marked files
- `CC` ... prepare for commit and pressing `CC` again will make the commit
- `CF` ... will append the staged files to the previous commit without changing commit message
- `CA` ... do a amend where you can change the commit message
- `q` ... quit magit


## [vader.vim](https://github.com/junegunn/vader.vim)
Testframework for Vimscript.

- `:Vader` ... runs the current test file


## [lightline](https://github.com/itchyny/lightline.vim)
Awesome way to create a custom status line.


## [vim-closetag](https://github.com/alvan/vim-closetag)
Auto close (X)HTML tags. Press `<` again will do the intendation.


## [vim-dispatch](https://github.com/tpope/vim-dispatch)
Run commands asynchronous.


## [vim-endwise](https://github.com/tpope/vim-endwise)
Automatically adds keywords like *end* to special constructs for all kinds of languages.


## [vim-grepper](https://github.com/mhinz/vim-grepper "vim-grepper")
Use grep to find anything.


## [vim-github-theme](https://github.com/wikimatze/vim-github-theme)
My first light colorscheme for vim.


## [vim-gnupg](https://github.com/jamessan/vim-gnupg)
Transparent editing of gpg encrypted files.


## [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
Updates tags file whenever you save a file.


## [vim-lexical](https://github.com/reedes/vim-lexical)
Custom dictionary, thesaurus, and spell checking options for files or when calling a command.

- `<C-x> <C-k>` ... opens the dictionary
- `<C-x> <C-t>` ... opens the thesaurus
- `<C-n>|<C-p>` ... navigate to the next or previous matching
- custom commands: `:German|:English` ... will load my customized settings


## [vim-litecorrect](https://github.com/reedes/vim-litecorrect)
Lightweight auto correction for 300 words.

    e.g:
      Im -> I'm
      shouldnt -> shouldn't
      thats -> that's


## [vim-misc](https://github.com/xolox/vim-misc)
Extended Vim standard library needed for vim-notes plugin.


## [vim-move](https://github.com/matze/vim-move)
Move lines and selections up and down.


## [vim-notes](https://github.com/xolox/vim-notes)
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


## [vim-plug](https://github.com/junegunn/vim-plug)
Package manager for Vim.

- `:PlugInstall` ... installs all the specified
- `:PlugClean` ... will remove all not used bundles
- `:PlugUpgrade` ... upgrade vim-plug automatically
- `:PlugDiff` ... show the latest change commits for your installed plugins


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


## [vim-test](https://github.com/janko-m/vim-test)
Easy run your test for various programming languages.

- `:TestNearest` ... will only run where cursor location is
- `:TestFile` ... will run all tests of the current file
- `:TestLast` ... will run the last test again
- `:TestVisit` ... jumps to the last executed test


## [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
Switch seamlessly between tmux panes and Vim splits.

- `<Ctrl-h>` ... Left
- `<Ctrl-j>` ... Down
- `<Ctrl-k>` ... Up
- `<Ctrl-l>` ... Right


## [vimtex](https://github.com/lervag/vimtex)
A very good tool to manage LaTeX files as well as the compilation.

- `\ll` ... compiles the tex-file
- `\lv` ... opens the document with the specified pdf-viewer
- `:VimtexTocOpen|:VimtexTocToggle` ... will open a clickable toc in the left pane (`q` will close the window)


## [neoyank](https://github.com/Shougo/neoyank.vim)
Saves yank history includes unite.vim history/yank source.

- `<leader>y` ... call the yank window


## [denite.vim](https://github.com/Shougo/denite.nvim "denite.vim")
Asynchronous unite all interfaces for Neovim/Vim8.


# License

This software is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).

© Matthias Günther <matthias@wikimatze.de>

