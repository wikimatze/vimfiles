# Vim settings

I'm always eager to learn, but I can't remember everything. Here is the list of the plugins I'm using - it is a reminder
of the most important commands and settings for each plugin.


# Installation

```sh
$ git clone https://github.com/wikimatze/vimfiles.git ~/.vim
$ bash ~/.vim/install.sh
```

Next, start vim and run `:PlugInstall` - happy vimming!


# Plugins


## [auto_mkdir](https://github.com/DataWraith/auto_mkdir)
Create directories that do not exists yet when creating new files (e.g. with `e`).


## [blockit](https://github.com/sk1418/blockit)
Wrap text in block.

- `'<,'>Block` ... works even in visual mode
- `..,..Block` ...  define a range where you want to have the block


## [easygrep](https://github.com/dkprice/vim-easygrep)
Makes search/replacing in your project a lot easier.

- `<leader>vv|vV` ... find word/whole word under the cursor
- `<leader>vr|vR` ... perform global search replace of word/whole word under cursor, with confirmation


## [delimitMate](https://github.com/Raimondi/delimitMate)
Semantic autoclose brackets.


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


## [markdown-folding](https://github.com/nelstrom/vim-markdown-folding)
Folding by section headings.


## [neocomplete](https://github.com/Shougo/neocomplete.vim)
Amazing tool for keyword completion.


## [neosnippet](https://github.com/Shougo/neosnippet.vim)
Adds snippet support for Vim and makes use of neocomplete plugin.

- `NeoSnippetEdit` ... edit snippets of the current filetype


## [neoyank](https://github.com/Shougo/neoyank.vim)
Saves yank history includes unite.vim history/yank source.

- `<leader>y` ... call the yank window


## [nyancat-vim](https://github.com/koron/nyancat-vim)
Nyancat rocks vim

- `:Nyancat` ... runs first version of it.
- `:Nyancat2` ... runs the second version.


## [open-browser](https://github.com/tyru/open-browser.vim)
Open the URI with `gx` (my custom mapping) in your default browser.


## [previm](https://github.com/kannokanno/previm)
Realtime preview for Markdown, rst, and textile files in your browser while editing.

- `:PrevimOpen` ... opens the current file on the browser.


## [ranger.vim](https://github.com/francoiscabrol/ranger.vim)
Ranger intergration for vim and neovim.


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
- `ys` ... "you surround" and the first argument specifies the scope (can be a motion) and the second
  makes the replacement and the second using for wrapping up the first argument with the quotes
  - `ys2w` ... will wrapp two following words (`2w`) with underscores (`\*`)
  - `yss{` ... wraps the whole line
  - `ysiw` ... yank the inner word and in the command window add the tag you want to add
- how to quote whole string?
  - mark the string in visual mode (either normal mode with *v* or block mode with `V`), then
    press `s` and then the quote (`"", (), {}`) you want to have and it wraps the string in this


## [quick-scope](https://github.com/tpope/vim-surround)
Lightning fast left-right movement (enhances the `f` and `F` command)


## [caw.vim](https://github.com/tyru/caw.vim)
Vim comment plugin.

- `gcc` ... toogles current line
- `gca` ... at comment at end of the line


## [tmux-complete-vim](https://github.com/wellle/tmux-complete.vim)
Insert mode completion for neighbor tmux windows.

- `:Unite tmuxcomplete` ... opens a unite menu listing all entries or words from other tmux windows
- `:Unite tmuxcomplete/lines` ... opens a unite menu listing all entries or words from other tmux windows with their
  lines


## [undotree](https://github.com/mbbill/undotree)
Display the undo graph for a file.

- `:UndotreeToggle` ... turn on or off the toggle feature


## [unite](https://github.com/Shougo/unite.vim)
A very good and flexible plugin for searching and displaying information.


## [unite-radio](https://github.com/klen/unite-radio.vim)
Playing sounds in Vim.

- `:Unite radio <CR>` ... will open the predefined stations
- `:MStop` ... will stop the currently played song
- `:MPlay <url>` ... play the specified url


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


## [vim-ags](https://github.com/gabesoft/vim-ags)
Using ag (silver-searcher) in Vim.

- `:Ags` ... search after the word/term
- `<C-n>|<C-p>` ... jump to the next/previous match
- `oa|ob` ... opens file above/beyond
- `r|R` ... jump direct to the next/previous matching
- `q` ... closes window
- `u` ... print help
- `E` ...  go into edit mode, but you cannot add lines
- `:AgsAdd` ... like like :Ags but append the results to the window
- `:AgsLast` ... run the last search


## [lightline](https://github.com/itchyny/lightline.vim)
Awesome way to create a custom status line.


## [vim-bracketed-paste](https://github.com/ConradIrwin/vim-bracketed-paste)
Solves the issue with `:set paste` for vim when pasting with `<C-v>`.


## [vim-closetag](https://github.com/alvan/vim-closetag)
Auto close (X)HTML tags.


## [vim-dispatch](https://github.com/tpope/vim-dispatch)
Run commands asynchronous.


## [vim-devicons](https://github.com/ryanoasis/vim-devicons)
Filetype icons for vim.


## [vim-easy-align](https://github.com/junegunn/vim-easy-align)
Auto indent files according to the pattern

- Mark the area and press `Enter` => possible patterns are `<Space>`, `=`, `:`, `.`, `|`, `&`, and `,`


## [vim-endwise](https://github.com/tpope/vim-endwise)
Automatically adds keywords like *end* to special constructs for all kinds of languages.


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
- custom commands: `:BookGerman|:BookEnglish` ... will load my customized settings


## [vim-litecorrect](https://github.com/reedes/vim-litecorrect)
Lightweight auto correction for 300 words.

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


## [vim-partial](https://github.com/jbgutierrez/vim-partial)
Extract partials for several languages with one keystroke.

- `<leader>x|:PlugExtract` ... will move the selected text to the selected
- `:PartialDispose` ... will put the contents of the partial in the text and will remove the partial


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


## [vimproc](https://github.com/Shougo/vimproc.vim.git)
For asynchronous command execution (need is used to search for file in bigger projects by the unite.vim plugin).


## [vimtex](https://github.com/lervag/vimtex)
A very good tool to manage LaTeX files as well as the compilation.

- `\ll` ... compiles the tex-file
- `\lv` ... opens the document with the specified pdf-viewer
- `:VimtexTocOpen|:VimtexTocToggle` ... will open a clickable toc in the left pane (`q` will close the window)



# License

This software is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).

© Matthias Günther <matthias@wikimatze.de>

