# Vim settings

I'm always eager to learn, but I can't remember everything. Here is the list of the plugins I'm using - it is a reminder of the
most important commands and settings for each plugin.

- [ack.vim](https://github.com/mileszs/ack.vim): You can perform ack commands in Vim
    - `:Ack {pattern} [{directory}]` - the basic command to search after words in your project
    - shortcuts for navigation:
      - `:o` → open the selected file in the current window
      - `:go` → open preview but will stay in the quickfix preview window
      - `:t` → open the selected file in a new tab
      - `:v` → vertical split
      - `:q` → quit the Ack window
- [ctrlp](http://kien.github.com/ctrlp.vim/): Full path fuzzy file, MRU, tag, and a tons of options
  - `<C-t>` → will open the finding match in a tab
  - `<C-v>` → will open the finding match in a vertical split
  - `<C-h>` → will open the finding match in a horizontal split
- [delimitMate](https://github.com/Raimondi/delimitMate): Semantic autoclose brackets
- [easytags](https://github.com/xolox/vim-easytags): Call exuberant Ctags within vim
  - `:UpdateTags` ... will run `ctags -R .` for the current directory but you can pass the directory you want as an argument
  - `:HighlightTags` ... will mark the relevant tags in the current file
- [fugitive](http://github.com/tpope/vim-fugitive): Git wrapper
  - `:Gstatus` → git status
      → `Ctrl→n` → go to the next file
      → `Ctrl→p` → go to the preview file
  - `:Gwrite` → git add
  - `:Gcommit` → git commit (press *wq* for send)
  - `:Gblame` → git blame
  - `:Gmove` → git mv
  - `:Gremove` → git rm
  - `:Glog` → git log
  - `:Gdiff` → split the window and display the changes
  - `:Ggrep` → does a *grep* in the tree
  - `:Gbrowse` → opens the actual file in the browser (normally its on github)
  - `:Git` → after this you can perform every other normal git command you want
- [gundo](http://sjl.bitbucket.org/gundo.vim): Graph the changes of your file saves in different a nice tree
  - `k` → move one step top
  - `j` → move one step below
  - `gg` → move to the button
  - `G` → move to the top
  - `Enter or double click` → revert the changes of the file to the current file
  - `p` → will open a preview to show the differences from the selected and the current version
    (just imagine a `git diff`)
- [hammer](https://github.com/matthias-guenther/hammer.vim): Displays various markups (markdown, textile, rdoc, asciidoc) with one
  keystroke in the browser
- [html5-syntax](https://github.com/othree/html5-syntax.vim): HTML5 elements syntax highlighing (*no doc*)
- [IndexSearch](https://github.com/vim-scripts/IndexedSearch): Redefines the search `(/,?)` and creates custom messages about how
  many hits there are
- [json](https://github.com/vim-scripts/JSON.vim): JSON detection and syntax-highlighting (*no doc*)
- [markdown](https://github.com/tpope/vim-markdown): Markdown-syntax highlighting (*no doc*)
- [matchit](http://www.vim.org/scripts/script.php?script_id=39): Press `%` to match tags in HTML, LaTeX and several other file
  formats (*no doc*)
- [minibufexpl](https://github.com/fholgado/minibufexpl.vim): Highlighting the current active buffer in an extra window
    - `:MiniBufExplorer` → opens the Minibuffer window
    - `:CMiniBufExplorer` → close the Minibuffer window
    - `:TMiniBufExplorer` → toggle Minibuffer window
- [netrw](http://www.vim.org/scripts/script.php?script_id=1075): Build in file browser
  - `:edit .` → take the current directory and open the file explorer
  - `:split .` → vertical split at current working directory
  - `:vsplit .` → horizontal split at current working directory
  - `:Explore .` → open the directory relative to the current file
  - `:Sexplore ` → horizontal split the current file in a new window
  - `:Vexplore ` → vertical split the current file in a new window
  - inside the netrw window
      - `v` ... vertical split of file in a new window
      - `p` ... preview the selected file and staying in the tree-browser
      - `P` ... preview the selected file in a big view and minimze the tree-browser to a minimum
      - `r` ... reverse order of the file listings
      - `<C-l>` ... refresh the view
  - file creation:
      - `%` → creates a new file
      - `D` → delete directory/file
      - `d` → create a directory
      - `R` → rename directory/file
- [notes](https://github.com/xolox/vim-notes): Perfect and easy note taking
  - `:Note` → starts a new note (you can specify the name of the note in the header)
  - `:write or :update` save the notes
  - `:RecentNotes` → overview of the last created changes
  - `:RelatedNotes` → shows all notes according to actual heading in the note
  - `:SearchNotes <pattern>` → search after all notes containing the specified pattern/word
  - `:edit note:<name-of-note>` → you can edit notes (other commands: `:split`, `:tabedit`)
  - `:NoteFromSelectedText` → create a new node from the selected text
  - `:DeleteNote` → deletes the actual note
  - `let g:notes_directory = '~/Documents/Notes'` → define the directory where files should be
    saved
  - it is possible to open notes directly from the command-line with **vim notes:collect**
  - tags:
      - with @tag you can define own tags (they are useful for searching)
      - `:IndexTaggedNotes` → creates new tags (for omnicomplete when @ is pressed)
      - `:ShowTaggedNotes` → will show all notes which are specified with a certain tag
      - `autocmd BufEnter ~/Dropbox/notes/* silent! lcd %:p:h\*` → path of the notes directory
- [rubyrefactoring](https://github.com/ecomba/vim-ruby-refactoring): Wonderful refactoring for ruby
  - `,rap`: Refactor Add Parameter → adds a parameter to a function (cursor must be somewhere in the function)
  - `,rec`: Refactor Extract Constant → mark a number in visual mode and the one will be moved on the top of a class or module
  - `,relv`: Refactor Extract Local Variable → if you have a longer if statement and wants to export some expression into a tmp
    variable, you can use any selection you want
  - `,rrlv`: Refactor Rename Local Variable → mark the name you want to change and the scope within the method
  - `,rriv`: Refactor Rename Instance Variable → mark the instance variable within a class
- [slime](https://github.com/jpalardy/vim-slime): Sending selection in Vim directly into a tmux session
  - `let g:slime_target = "tmux"`
  - `C-c C-`: press Ctrl-c-c to put the actual paragraph (`vip`) in the tmux session (visual select works also)
- [snipmate](https://github.com/msanders/snipmate.vim): Define your own snippets for different languages
- [speedating](https://github.com/tpope/vim-speeddating): Fast way to increment all kind of numbers
  - `<C-a>` → ++ number
  - `<C-x>` → -- number
  - `:SpeedDatingFormat` → shows the regular expression of possible formations
  - `:SpeedDatingFormat {}` → here you can specify the format which can be used to be recognized by the program
- [supertab](https://github.com/ervandew/supertab): Word auto completion with pressing the tab key
- [syntastic](https://github.com/scrooloose/syntastic): Performs syntax check on various languages when saving
- [surround](https://github.com/tpope/vim-surround): Change quotes and all other delimiters
  - `ds"` → stands for delete surround and will delete the surrounds
      - example: `{ :a => 1 }` after pressing `ds{` you will get `:a => 1`
  - `cs("` → change surroundings and will replace the first surrounding argument with the second
    surrounding
      - example: `(:a => 1)` after pressing `cs({` you will get `{ :a => 1 }`
  - `ys` → stands for "you surround" and the first argument specifies the scope and the second
    makes the replacement and the second using for wrapping up the first argument with the quotes
      - `ys2w\` → will wrapp two following words (`2w`) with underscores (`\*`)
      - `yss{` → wraps the whole line
  - how to quote whole string?
      - mark the string in visual mode (either normal mode with *v* or block mode with `V`), then
        press `s` and then the quote (`"", (), {}`) you want to have and it wraps the string in this
- [tabular](https://github.com/godlygeek/tabular): Auto indent files according to the pattern
  - `:Tabularize / {pattern}`
- [tmux.vim](https://github.com/zaiste/tmux.vim): Syntax detection for tmux files and highlighting
- [tocdown](https://github.com/matthias-guenther/tocdown): Display the headlines of a markdown document in an extra window.
- [yankring](https://github.com/vim-scripts/YankRing.vim): Better register management and saves up to 100 buffered lines
  - `:YRShow` → shows the actual buffer (you can use visual buttons to select more)
  - `:YRClear` → deletes the buffer
  - `:YRSearch` → type in a word or regular expression to search the yankring after it
  - `j`, `k` for navigation and <Enter> chose your entry
  - `d` delete an entry from from the yankring buffer - but you barely need this function
- [vim-endwise](https://github.com/tpope/vim-endwise): Automatically adds keywords like *end* to special constructs in ruby (*no
  doc*)
- [vim-ruby](https://github.com/vim-ruby/vim-ruby): Configuration files for editing and compiling Ruby - it even adds custom
  text-objects only for Vim
  - following commands can performed in *visual mode*
    - `am` → "a method" select from 'def' till 'end'
    - `im` → "inner method" select all inside the method exclude 'def' and 'end'
    - `aM` → "a class" select from 'class' till 'end'
    - `iM` → "inner class" select all inside the class exclude 'class' and 'end'
  - the following commands can only performed *normal mode*
    - `]m` → move to the beginning of the *next method*
    - `[m` → move to the beginning of the *previous method*
    - `]]` → move to the beginning of the **next** *module* or *class* definition
    - `[[` → move to the beginning of the **previous** *module* or *class* definition
- [vim-liquid](https://github.com/tpope/vim-liquid): Highlight liquid tags used for jekyll (*no doc*)
- [vim-shell](https://github.com/xolox/vim-shell): Open files and web pages in associated programs out of Vim
- [vim-puppet](https://github.com/rodjek/vim-puppet): Syntax file for puppet files (*no docu*)
- [vis](https://github.com/vim-scripts/vis): Execute commands only in the selected section of visual mode
    - mark a text in visual mode, then press `:B` and then you can perform any command
    - example: replace all '\-' through '-' => mark the block, press :B (you should
      have in your commandline :'<,'>:B) now press the typical text replacement commands you want (s/-/-) and you are done
- [vspec](https://github.com/kana/vim-vspec): Testing framework for Vimscript
- [vundle](https://github.com/gmarik/vundle): Plugin manager for Vim
    - `:BundleInstall` → opens a extra window and show the files that will be installed
    - `:BundleInstall!` → installs or updates installed bundles
    - `:BundleSearch <foo>` → opens a window to display the matches in an extra window
    - `:BundleClean` → confirms removal of unused script-dirs from `.vim/bundle/`.

# Usage

I highly not recommend you to copy my *.vimrc* because they may not fit to your working style (see **Luca Pettes**
[article](http://lucapette.com/vim/rails/vim-for-rails-developers-lazy-modern-configuration)). But if you would like to use this
repository to get started with Vim, please perform the following tasks:

- `mv <path-to-vim-settings-clone>` ~/
- `mkdir ~/.vim/.backup`
- `mkdir ~/.vim/bundle`
- Start Vim and type `:BundleInstall`

# Contact

Feature request, bugs, questions, etc. can be send to <matthias.guenther@wikimatze.de>.

# License

This software is licensed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License).

© 2011-2012 Matthias Günther <matthias.guenther@wikimatze.de>

