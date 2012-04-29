# Vim settings

This is a list of all the plugins I'm using for [Vim]. It is unusual to post here commands and
shortcuts about the plugins because most plugins are well documented. But I decided to provide an
overview of all the main settings I got from struggling through each plugin for my own demands. As
well, you can have look on my *vimrc* which contains many hacks.


I know there is the [janus] package out there which does configure a lot of stuff, but maintain my
own set of plugins and settings. Feel free to correct me or provide me with additional hints - I'm always
eager to learn something new.


The text of each link is the name for the doc you have to type in [Vim] (remember to use *:help
\<name\>*). If after plugin description stands the phrase (*no doc*) - well you know what that
means.


[janus]: https://github.com/carlhuda/janus "janus"
[Vim]: http://www.vim.org/ "Vim"

- [ack.vim](https://github.com/mileszs/ack.vim "ack.vim"): you can perform ack commands in Vim
    - **:Ack {pattern} [{directory}]** - the basic command to search after words in your project
    - shortcuts for navigation:
      - :o → open the selected file in the current window
      - :go → open preview but will stay in the quickfix preview window
      - :t → open the selected file in a new tab
      - :v → vertical split
      - :q → quit the Ack window
- [colorv](https://github.com/Rykka/ColorV "colorv"): display Hex Color with real colors in Vim -
  very useful when working with CSS
- [command-t](https://github.com/wincent/Command-T "command-t"): file search in the
  actual directory
  - **:CommandTFlush** - update the path cache and also include new and deleted files
  - **Installation**: $ ~/.vim/bundle/Command-t; rake make
  - *shortcuts:*
      - **Ctrl-j** - go down
      - **Ctrl-k** - go up
      - **Ctrl-t** - opens the file in a new tab
      - **Ctrl-s** - opens the file under the cursor with a *horizontal* split
      - **Ctrl-v** - opens the file under the cursor with a *vertcial* split
      - **ESC or Ctrl-c** - closing the open dialog
      - **Ctrl-u** - clean the matching window
      - **Ctrl-ENTER** - opens the file under the cursor in a new window
  - *mappings:*
      - **\<Leader\>t** - call *:CommandT* command to open a specified file
          - **:CommandT ../path/to/other/files** - search in the specified path
      - **\<Leader\>b** - opens the buffer for this files after which were searched in the past
- [delimitMate](https://github.com/Raimondi/delimitMate/ "delimitMate"): semantic autoclose brackets
- [easymotion](https://github.com/Lokaltog/vim-easymotion "easymotion"): easier and faster use of
  motions
    - **<leader><leader>** and then any motion key like *w, e, j* and so on
    - **<leader><leader>t | T** - search after the target character forward (t) and backward (T)
- [easytags](https://github.com/xolox/vim-easytags "easytags"): automated tag generation for vim
    - **:UpdateTags** - will update the tags
- [endwise-ruby](https://github.com/tpope/vim-endwise "endwise-ruby"): automatically
  adds keywords like *end* to special constructs in ruby (*no doc*)
- [fugitive](http://github.com/tpope/vim-fugitive "vim-fugitive"): git wrapper
  - **:Gstatus** - git status
      - **Ctrl-n** - go to the next file
      - **Ctrl-p** - go to the preview file
  - **:Gwrite** - git add
  - **:Gcommit** - git commit (press *wq* for send)
  - **:Gblame** - git blame
  - **:Gmove** - git mv
  - **:Gremove** - git rm
  - **:Glog** - git log
  - **:Gdiff** - split the window and display the changes
  - **:Ggrep** - does a *grep* in the tree
  - **:Gbrowse** - opens the actual file in the browser (normally its on github)
  - **:Git** - after this you can perform every other normal git command you want
- [Gist.vim](https://github.com/mattn/gist-vim "Gist.vim"): upload files directly to github with just one command
  - first setup your git credentials **let g:github*user = 'your-name'** and **let g:github*token =
    'token'**  in your *.vimrc*
      - is the API Token which can be found under Account Settings under Account Admin on
        [github](https://github.com "github")
  - **:Gist** - post whole text to gist
  - **:Gist XXXXX** - get gist XXXXX
  - **:Gist -l** - list all my gist
  - **:Gist -d** - delete the gist
- [gundo](http://sjl.bitbucket.org/gundo.vim/ "gundo"): graph the changes of your file saves in
  different a nice tree
  - **k** - move one step top
  - **j** - move one step below
  - **gg** - move to the button
  - **G** - move to the top
  - **Enter or double click** - revert the changes of the file to the current file
  - **p** - will open a preview to show the differences from the selected and the current version
    (just imagine a `git diff`)
  - *mappings:*
      - **nnoremap \<F3\> :GundoToggle\<CR\>**
- [hammer](https://github.com/robgleeson/hammer.vim "hammer"): displays various markups (markdown,
  textile, rdoc, asciidoc) with one keystroke in the browser
  - *mappings:*
      - **noremap \<leader\>m :Hammer\<CR\>**
- [IndexSearch](https://github.com/vim-scripts/IndexedSearch "IndexSearch"): redefines the search
  (/,?) in Vim and creates custom messages about how many hits there are
- [json](https://github.com/vim-scripts/JSON.vim "json"): json detection and syntax-highlighting (*no doc*)
- [markdown](https://github.com/tpope/vim-markdown "markdown"): markdown-syntax highlighting (*no doc*)
- [matchit](http://www.vim.org/scripts/script.php?script_id=39 "matchit"): press % to match tags in
  HTML, LaTeX and several other file formats (*no doc*)
- [MRU](https://github.com/vim-scripts/mru.vim "MRU"): opens a quickfix windows which shows the last
  opens files (*no doc*)
  - **:MRU** - opens the window
- [netrw](http://www.vim.org/scripts/script.php?script_id=1075 "netrw"): build in filebrowser
  - **:edit .** - take the current directory and opens fileexplorer
  - **:split .** - vertical split at current working directory
  - **:vsplit .** - horizontal split at current working directory
  - **:Explore .** - open the directory relative to the current file
  - **:Sexplore ** - horizontal split the current file in a new window
  - **:Vexplore ** - vertical split the current file in a new window
  - file creation:
      - **%** - creates a new file
      - **d** - create a directory
      - **D** - delete directory/file
      - **R** - rename directory/file
- [notes](https://github.com/xolox/vim-notes "notes"): note taking - perfect for *getting things
  done*
  - **:Note** - starts a new note => you can specify the name of the note in the header
  - **:write or :update** save the notes
  - **:RecentNotes** - overview of the last created changes
  - **:RelatedNotes** - shows all notes according to actual heading in the note
  - **:SearchNotes <pattern>** - search after all notes containing the specified pattern/word
  - **:edit note:<name-of-note>** - you can edit notes (other commands: *:split*, *:tabedit*)
  - **:NoteFromSelectedText** - create a new node from the selected text
  - **:DeleteNote** - deletes the actual note
  - **let g:notes*directory = '~/Documents/Notes'** - define the directory where files should be
    saved
  - it is possible to open notes directly from the command-line with **vim notes:collect**
  - *tags*
      - with @tag you can define own tags (they are useful for searching)
      - **:IndexTaggedNotes** creates new tags (for omnicomplete when @ is pressed)
      - **:ShowTaggedNotes** - will show all notes which are specified with a certain tag
      - **autocmd BufEnter ~/Dropbox/notes/* silent! lcd %:p:h\*** - path of the notes directory
- *mappings:*
      - **nnoremap \<F7\> :Note collect\<CR\>**
- [rubyrefactoring](https://github.com/ecomba/vim-ruby-refactoring "rubyrefactoring"): cool when
  working with ruby
  - **,rap**: Refactor Add Parameter => adds a parameter to a function (cursor must be somewhere in the
    function)
  - **,rec**: Refactor Extract Constant => mark a number in visual mode and the one will be moved on
    the top of a class or module
  - **,relv**: Refactor Extract Local Variable => if you have a longer if statement and wants to
    export some expression into a tmp variable, you can use any selection you want
  - **,rrlv**: Refactor Rename Local Variable => mark the name you want to change and the scope
    within the method
  - **,rriv**: Refactor Rename Instance Variable => mark the instance variable within a class
- [session](https://github.com/xolox/vim-session "session"): save session and to open then later
  - **:SaveSession <name>** - save the current session under the specified name
  - **:OpenSession** - dialog to select the section you want to open
      - **:OpenSession <name>** - takes an existing session as input (use tab completion!)
  - **:CloseSession** - will close the whole session from the actual tab/window and will ask to
    overwrite the loaded session
  - **:DeleteSession** - choose the session you want to delete
  - **:ViewSession** - information about the loaded session (shows Vim internals - good for debugging)
- [snipmate](https://github.com/msanders/snipmate.vim "snipmate"): define your own snippets for faster coding
  - you can define own snippets (each file must have the name of the file type, for example contains
    the file *tex.snippets* all snippets for latex documents)
  - better set the file type explicit for each type to load all snippets (*autocmd!
    BufRead,BufNewFile \-.haml set ft=haml*)
- [speedating](https://github.com/tpope/vim-speeddating "speeddating"): a faster way to increment
  all kind of numbers
  - **CTRL-a** - ++ number
  - **CTRL-x** - -- number
  - **:SpeedDatingFormat** - shows the regular expression of possible formations
  - **:SpeedDatingFormat {}** - here you can specify the format which can be used to be recognized
    by the program
- [supertab](https://github.com/ervandew/supertab "supertab"): word auto completion with pressing the tab key
- [syntastic](https://github.com/scrooloose/syntastic "syntastic"): performs syntax check on various
  languages when saving
- [surround](https://github.com/tpope/vim-surround "surround")
  - **ds"** - stands for delete surround and will delete the surrounds - place the cursor in in the
    string with the surroundings
      - **example**: { :a => 1 } after pressing *ds{* :a => 1
  - **cs("** - change surroundings and will replace the first surrounding argument with the second
    surrounding
      - **example**: (:a => 1) after pressing *cs({* { :a => 1 }
  - **ys** - stands for "you surround" and the first argument specifies the scope and the second
    makes the replacement and the second using for wrapping up the first argument with the quotes
      - **ys2w\***: will wrapp two following words (2w) with underscores (\*)
      - **yss{** - wraps the whole line
  - how to quote whole string?
      - mark the string in visual mode (either normal mode with *v* or block mode with *V*), then
        press *s* and then the quote ("", (), {}) you want to have and it wraps the string in this
- [tabular](https://github.com/godlygeek/tabular "tabular"): is a plugin to auto indent files
  according to the pattern
  - **:Tabularize / {pattern}**
- [tagbar](http://majutsushi.github.com/tagbar/ "tagbar"): display the structure of the code
  - **:TagbarOpen** - opens the view tagbar
  - **:TagbarToggle** - opens or close the tagbar whether it was closed or open
  - **:TagbarOpenAutoClose** - opens the tagbar and close it after a tag was selected - the cursor jumps to it
  - *mappings:*
      - **nnoremap \<silent\> \<F4\> :TagbarToggle\<CR\>**
  - [How to install exurberant ctags on mac](http://www.dreamincode.net/forums/blog/164/entry-1479-installing-exuberant-ctags-and-taglist-on-a-mac/ "how to install ctags in mac")
- [tocdown](https://github.com/matthias-guenther/tocdown "tocdown"): display the headlines of a markdown document in an extra window.
- *mappings:*
      - **nnoremap \<F2\> :TocdownToggle\<CR\>**
- [yankring](https://github.com/vim-scripts/YankRing.vim "yankring"): better register management and saves up to 100 buffered lines
  - **:YRShow** - shows the actual buffer (you can use visual buttons to select more)
  - **:YRClear** - deletes the buffer
  - **:YRSearch** - type in a word or regular expression to search the yankring after it
  - **j**, **k** for navigation and <Enter> chose your entry
  - **d** delete an entry from from the yankring buffer - but you barely need this function
  - *mappings:*
      - **noremap \<leader\>y :YRShow\<CR\>
      - **noremap \<leader\>x :YRClear\<CR\>
- [vim-bundler](https://github.com/tpope/vim-bundler "vim-bundler"): wrapper for bundler in Vim
    - **:Bundle** - wraps bundle after, e.g. `:Bundle install`
    - **:Bopen** - opens the *Gemfile* for editing
- [vim-css3 syntax](https://github.com/hail2u/vim-css3-syntax "vim-css3 syntax"): add syntax support
  for css3 (*no doc*)
- [vim-haml](https://github.com/tpope/vim-haml "vim-haml"): file detection and syntax highlighting
  (*no doc*)
- [vim-ruby](https://github.com/vim-ruby/vim-ruby "vim-ruby"): ruby omnicompletion and syntax
  highlighting (*no doc*)
  - **:let ruby*operators = 1** - create colors for ruby operators
  - **:let ruby\*space\*errors = 1** - mark whitespace characters
- [vim-liquid](https://github.com/tpope/vim-liquid "vim-liquid"): highlight liquid tags like {% ...
  %} (*no doc*)
- [vim-open-associated-programs](https://github.com/xolox/vim-open-associated-programs "vim-open-associated-programs"):
  open files and web pages in associated programs out of Vim
  - has generally no mappings and just defines the programs which opens the specified file according
    to the file ending
  - mappings come from the bundle [vim-shell](https://github.com/xolox/vim-shell "vim-shell"):
      - **F6** open file and directory names, URLs and e-mail addresses under the cursor
          - **:Open http://wikimatze.de** alternate syntax
- [vis](https://github.com/vim-scripts/vis "vis"): you can execute commands only in the selected
  section of visual mode
    - mark a text in visual mode, then press :B and then you can perform any command (Ex command)
      you want
    - example: replace all '\-' through '-' => mark the block, press :B (you should have in your
      commandline :'<,'>:B) now press the typical text replacement commands you want (s/-/-) and you
      are done
- [vspec](https://github.com/kana/vim-vspec "vspec"): Testing framework for Vimscript
- [vundle](https://github.com/gmarik/vundle "vundle"): is a Vim plugin manager
    - **:BundleInstall** - opens a extra window and show the files that will be installed
    - **:BundleInstall!** - installs or updates installed bundles
    - **:BundleSearch <foo>** - opens a window to display the matches in an extra window
    - **:BundleClean** - confirms removal of unused script-dirs from `.vim/bundle/`.

## Usage

I highly not recommend you to copy my *.vimrc* because they may not fit to your working style (see
**Luca Pettes**
[article](http://lucapette.com/vim/rails/vim-for-rails-developers-lazy-modern-configuration/ "article")). But
if you would like to use this repository to get started with Vim, please perform the following
tasks:

- `mv <path-to-vim-settings-clone>` ~/ # move .vimrc into your home folder
- `mkdir ~/.vim/.backup` # create the backup folder
- `mkdir ~/.vim/bundle` # needed for the pathogen script, this is the major
- `ruby ~/.vim/viminstall.rb` # install the plugins


## Colors scheme

I have found the following three for my taste - there are tons of other colors out there

- [ir black](https://github.com/borgand/ir*black "ir black"): looks a little bit frosty but the
  overall feeling is very fast
![ir black screen shot](https://github.com/matthias-guenther/vim-settings/raw/master/ir_black.png)
- [railscasts](https://github.com/jpo/vim-railscasts-theme "railscasts"): looks dusty and feels
  after editing
![railscasts screen shot](https://github.com/matthias-guenther/vim-settings/raw/master/railscasts.png)
- [vividchalk](https://github.com/tpope/vim-vividchalk.git "vividchalk"): is like railscasts but
  without the dusty looking and some really fancy colors
![vividchalk screen shot](https://github.com/matthias-guenther/vim-settings/raw/master/vividchalk.png)


## Contact

Feature request, bugs, questions, etc. can be send to <matthias.guenther@wikimatze.de>.


## License

This software is licensed under the [MIT license][mit].

© 2011-2012 Matthias Guenther <matthias.guenther@wikimatze.de>.

[mit]: http://en.wikipedia.org/wiki/MIT*License

