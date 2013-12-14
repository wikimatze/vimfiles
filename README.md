# Vim settings

I'm always eager to learn, but I can't remember everything. Here is the list of the plugins I'm using - it is a reminder
of the most important commands and settings for each plugin.

- [ack.vim](https://github.com/mileszs/ack.vim): You can perform ack commands in Vim
  - `:Ack {pattern} [{directory}]` - the basic command to search after words in your project
  - shortcuts for navigation:
    - `:o` ... open the selected file in the current window
    - `:go` ... open preview but will stay in the quickfix preview window
    - `:t` ... open the selected file in a new tab
    - `:v` ... vertical split
    - `:q` ... quit the Ack window
- [autotag.vim](https://github.com/vim-scripts/AutoTag): Whenever you save a file, it deletes all of its entries and invokes ctags in append mode
- [ctrlp](http://kien.github.com/ctrlp.vim/): Full path fuzzy file, MRU, tag, and a tons of options
  - `<C-t>` ... will open the finding match in a tab
  - `<C-v>` ... will open the finding match in a vertical split
  - `<C-x>` ... will open the finding match in a horizontal split
  - `<C-f>` + `<C-b>` ... cycle between search modes (buffer, files, MRU, tags)
  - `<C-z>` ... to mark multiple files and `<C-o>` to open them splitted, if you press only enter it will open it
    normally
  - `:CtrlPTag<CR>` ... Search after the tags
- [delimitMate](https://github.com/Raimondi/delimitMate): Semantic autoclose brackets
- [fugitive](http://github.com/tpope/vim-fugitive): Git wrapper
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
  - `:Git` ... perform every other normal git command in the terminal
  - `:Glog` ... git log
      - `:Glog -5` ... will open the last 5 commits (`:copen` will open the quickfix window for all commits)
      - `:Glog -- %` ... will open only the commits that touch the current file
  - searching:
      - search working copy files: `:Ggrep <word>`
      - search commit messages: `:Glog --grep=fugitive`
      - search for words added or removed: `Glog -Sadd`
- [git-gutter](https://github.com/akiomik/git-gutter-vim): Shows git diff in Vim's gutter
- [html5-syntax](https://github.com/othree/html5-syntax.vim): HTML5 elements syntax highlighing (*no doc*)
- [l9](https://github.com/vim-scripts/L9.git): Vim-script library, add functionality to program vim-files
(used by vim-autocomplpop plugin)
- [markdown-folding](https://github.com/nelstrom/vim-markdown-folding): Folding by section headings - [multiple cursors](https://github.com/terryma/vim-multiple-cursors): Sublime Text style selection to replace method
  names
  - `<C-n>` ... the current word under the cursor will be selected
  - `<C-x>` ... remove the current virtual cursor and skip to the next virtual cursor location
  - `ESC` ... will leave the selection mode
- [NERDTree](https://github.com/scrooloose/nerdtree): amazing file browser for GUI guys
  - `m` - choose which action to perform (add, move, copy, delete)
      - add / at the end to create a new directory
  - `r` - refresh the view
  - `O` - opens the node recursive from the parent node
  - `t` - opens th file in a new tab
  - `p` - jumps to the root tree
  - `T` - opens the file in a new tab and the focus will stay in the current window
  - `x` - closed the parent node, but leave the nodes above the node open (visual close)
  - `X` - closed all nodes which are under the actual node (physical close)
  - `R` - update the view
  - press `?` in the NERDTree window
  - `:NERDTreeFind` - open the current file in the NERDTree and expand the tree to this file
    location
- [notes](https://github.com/xolox/vim-notes): Perfect and easy note taking
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
    - `autocmd BufEnter ~/Dropbox/notes/* silent! lcd %:p:h\*` ... path of the notes directory
- [ri.vim](https://github.com/danchoi/ri.vim): Browse ri documentation offline in Vim
  - `,r` ... opens start/autocomplete window with horizontalsplit
  - `,R` ... open start/autocomplete window with vertical split
  - inside documentation window
    - `,,r` ... class/module autocompletion window
    - `-` ... goes up from a method page into the parent class/module
- [rubyrefactoring](https://github.com/ecomba/vim-ruby-refactoring): Refactoring for ruby
  - `,rap`: Refactor Add Parameter ... adds a parameter to a function (cursor must be somewhere in the function)
  - `,rec`: Refactor Extract Constant ... mark a number in visual mode and the one will be moved on the top of a class
    or module
  - `,relv`: Refactor Extract Local Variable ... if you have a longer if statement and wants to export some expression
    into a tmp
    variable, you can use any selection you want
  - `,rrlv`: Refactor Rename Local Variable ... mark the name you want to change and the scope within the method
  - `,rriv`: Refactor Rename Instance Variable ... mark the instance variable within a class
- [snipmate](https://github.com/msanders/snipmate.vim): Define your own snippets for different languages
- [speedating](https://github.com/tpope/vim-speeddating): Fast way to increment all kind of numbers
  - `<C-a>` ... ++ number
  - `<C-x>` ... -- number
  - `:SpeedDatingFormat` ... shows the regular expression of possible formations
  - `:SpeedDatingFormat {}` ... here you can specify the format which can be used to be recognized by the program
- [syntastic](https://github.com/scrooloose/syntastic): Performs syntax check on various languages when saving
- [surround](https://github.com/tpope/vim-surround): Change quotes and all other delimiters
  - `ds"` ... stands for delete surround and will delete the surrounds
    - example: `{ :a => 1 }` after pressing `ds{` you will get `:a => 1`
  - `cs("` ... change surroundings and will replace the first surrounding argument with the second surrounding
    - example: `(:a => 1)` after pressing `cs({` you will get `{ :a => 1 }`
  - `ys` ... stands for "you surround" and the first argument specifies the scope and the second
    makes the replacement and the second using for wrapping up the first argument with the quotes
    - `ys2w\` ... will wrapp two following words (`2w`) with underscores (`\*`)
    - `yss{` ... wraps the whole line
  - how to quote whole string?
    - mark the string in visual mode (either normal mode with *v* or block mode with `V`), then
      press `s` and then the quote (`"", (), {}`) you want to have and it wraps the string in this
- [tabular](https://github.com/godlygeek/tabular): Auto indent files according to the pattern
  - `:Tabularize / {pattern}`
- [tocdown](https://github.com/matthias-guenther/tocdown): Display the headlines of a markdown document in an extra
  window.
- [vim-autocomple](https://github.com/matthias-guenther/vim-autocomplete): Automatically opens  popup menu for
  completion when entering characters
  - `:AcpEnable` ... enable auto-popup
  - `:AcpDisable` ... disable auto-popup
- [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax): Add CSS3 syntax support (*no doc*)
- [vim-endwise](https://github.com/tpope/vim-endwise): Automatically adds keywords like *end* to special constructs in
  ruby (*no doc*)
- [vim-gnupg](https://github.com/jamessan/vim-gnupg):  Transparent editing of gpg encrypted files (*no doc*)
- [vim-misc](https://github.com/xolox/vim-misc): Extended Vim standard library needed for vim-notes plugin (*doc misc*)
- [vim-move](https://github.com/matze/vim-move): Move lines and selections up and down.
- [vim-ruby](https://github.com/vim-ruby/vim-ruby): Configuration files for editing and compiling Ruby - it even adds
  custom text-objects only for Vim
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
- [vim-slime](https://github.com/jpalardy/vim-slime): Send text to a screen/tmux session (perfect REPL abilities for
  Vim)
  - `<C>cc` ... put the curent paragraph in the predefined window (`vip`)
  - `<C>cv` ... will ask after the target pane again
  - `:<range>SlimeSend` ... which lines should be send to the target
  - define slime's target:
    - `:` ... current window or current pane
    - `:a` ... the `a`th window in the current pane
    - `:a.b` ... the `b`th pane in window `a`
    - `c:a.b` ... in the tmux session with the name `c` the `b`th pane in window `a`
- [yankring](https://github.com/vim-scripts/YankRing.vim): Better register management and saves up to 100 buffered lines
  - `:YRShow` ... shows the actual buffer (you can use visual buttons to select more)
  - `:YRClear` ... deletes the buffer
  - `:YRSearch` ... type in a word or regular expression to search the yankring after it
  - `j`, `k` for navigation and <Enter> chose your entry


## Installation

I highly not recommend you to copy my *.vimrc* because they may not fit to your working style (see **Luca Pettes**
[wonderful article](http://lucapette.com/vim/rails/vim-for-rails-developers-lazy-modern-configuration)). But if you
would like to use this repository to get started with Vim, please perform the following tasks:


- `git clone --recursive git@github.com:matthias-guenther/vim-settings.git ~/.vim`
- `mkdir ~/.vim/backup`
- `mv ~/.vim/.vimrc ~/`


## Contact

Feature request, bugs, questions, etc. can be send to <matthias.guenther@wikimatze.de>.


## License

This software is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).

© Matthias Günther <matthias.guenther@wikimatze.de>

