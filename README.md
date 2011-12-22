# Vim settings #

Here is a list of all the plugins I'm using in [Vim](http://www.vim.org/ "Vim"). It is unusual to
post here commands and shortcuts about the plugins because most plugins are well documented. But I
decided to provide an overview of all the main settings I got from struggling through each plugin
for my own demands. As well, you can have look on my _vimrc_ which contains many hacks.

I know there is the [janus](https://github.com/carlhuda/janus "janus") package out there which does
configure a lot of stuff, but maintain my own set of plugins and settings. Don't hesitate to copy or
ask me questions about it.

The text of each link is the name for the doc you have to type in Vim (never underestimate remember
_:help \<name\>_). If after plugin description stands the phrase (_no doc_) it says, that you can
not open the documentation in Vim. Feel free to correct me or provide me with additional hints - I'm
always eager to learn something new.

- [AutoClose](http://www.vim.org/scripts/script.php?script_id=2009 "autoclose"): automatically close
  brackets - it will saves you a lot of finger acrobatic because you don't have to type closing
  brackets (_no doc_)
- [autocorrect](https://github.com/panozzaj/vim-autocorrect "autocorrect"): auto correct English
  spelling mistakes, when typing (_no doc_)
  - don't forget to put _:source /path/to/the/autocorrect.vim_ in your _.vimrc_
- [ack.vim](https://github.com/mileszs/ack.vim "ack.vim"): you can perform ack commands in Vim
  - **:Ack {pattern} [{directory}]** - the basic command to search after words in your project
- [coffee-script](https://github.com/kchmck/vim-coffee-script "coffe-script"): add coffee script
  support for Vim (_no doc_)
- [cucumber](https://github.com/tpope/vim-cucumber "cucumber"): syntax-highlighting for cucumber
  files (_no doc_)
- [endwise-ruby](http://www.vim.org/scripts/script.php?script_id=2386 "endwise-ruby"): automatically
  adds keywords like _end_ to special constructs in ruby (_no doc_)
- [clojure](http://www.vim.org/scripts/script.php?script_id=2501 "clojure"): clojure support for Vim
  (_no doc_)
- [command-t](http://www.vim.org/scripts/script.php?script_id=3025 "command-t"): file search in the
  actual directory
  - **\<Leader\>-t** - call _:CommandT_ command to open a specified file
      - **:CommandT ../path/to/other/files** - search in the specified path
  - **\<Leader\>-b** - opens the buffer for this files after which were searched in the past
  - **:CommandTFlush** - update the path cache and also include new and deleted files
  - shortcuts for the navigation
      - **CTRL-j** - go down
      - **CTRL-k** - go up
      - **CTRL-t** - opens the file in a new tab
      - **CTRL-s** - opens the file under the cursor with a _horizontal_ split
      - **CTRL-v** - opens the file under the cursor with a _vertcial_ split
      - **ESC or CTRL-c** - closing the open dialog
      - **CTRL-u** - clean the matching window
      - **CTRL-ENTER** - opens the file under the cursor in a new window
  - _own settings_:
      - **let g:CommandTMaxFiles = 20000** - max files that will be considered when scanning current
        directory
      - **let g:CommandTMaxDepth = 20** - number of levels that will be considered when scanning
        current directory
      - **let g:CommandTAlwaysShowDotFiles = 1** - also search after matching with dotted files
      - **let g:CommandTScanDotDirectories = 1** - do not search in dot directory
      - **let g:CommandTMatchWindowAtTop = 0** - the match window will appear at the top of the
        editor window
      - **let g:CommandTAcceptSelectionMap = '\<CR\>'** - enter open findings in same window
      - **let g:CommandTAcceptSelectionSplitMap = '\<C-s\>'** - _CTRL-Enter_ will makes a horizontal
        split
      - **let g:CommandTAcceptSelectionVSplitMap = '\<C-v\>'** - _CTRL-v_ will make a vertical split
      - **let g:CommandTAcceptSelectionTabMap = '\<C-t\>'** - _CTRL-t_ will open the file in a new
        tab
      - **set wildignore+=-.o,-.obj,.git,.svn,vendor/rails/--** - which files should not be matched
        in command-t
- [fugitive](http://github.com/tpope/vim-fugitive "vim-fugitive"): git wrapper
  - **:Gstatus** - git status
      - **CTRL-n** - go to the next file
      - **CTRL-p** - go to the preview file
  - **:Gwrite** - git add
  - **:Gcommit** - git commit (press _wq_ for send)
  - **:Gblame** - git blame
  - **:Gmove** - git mv
  - **:Gremove** - git rm
  - **:Glog** - git log
  - **:Gdiff** - split the window and display the changes
  - **:Ggrep** - does a _grep_ in the tree
  - **:Gbrowse** - opens the actual file in the browser (normally its on github)
  - **:Git** - after this you can perform every other normal git command you want
- [Grep.vim](http://www.vim.org/scripts/script.php?script_id=311 "Grep.vim"): using grep to search
  after files - a good alternative to grep (-no doc-)
- [Gist.vim](https://github.com/mattn/gist-vim "Gist.vim"): upload files directly to github with just one command
  - first setup your git credentials **let g:github_user = 'your-name'** and **let g:github_token =
    'token'**  in your _.vimrc_
      - is the API Token which can be found under Account Settings under Account Admin on
        [github](https://github.com "github")
  - **:Gist** - post whole text to gist
  - **:Gist XXXXX** - get gist XXXXX
  - **:Gist -l** - list all my gist
  - _own settings_:
      - **let g:gist\_detect\_filetype = 1** - detecting file type for each gist
      - **let g:gist\_open\_browser\_after_post = 1** - open the gist after each post
- [gundo](http://sjl.bitbucket.org/gundo.vim/ "gundo"): graph the changes of your file saves in
  different a nice tree
  - --k-- - move one step top
  - --j-- - move one step below
  - --gg-- - move to the button
  - --G-- - move to the top
  - --Enter or double click-- - revert the changes of the file to the current file
  - --p-- - will open a preview to show the differences from the selected and the current version
    (just imagine a `git diff`)
  - -own settings-:
      - --let g:gundo_width = 45-- - horizontal width
      - --let g:gundo_preview_height = 15-- - vertical height
      - --let g:gundo_help = 1-- - show the help in gundo window
      - --let g:gundo_close_on_revert = 0-- - don't close gundo after a version is selected
      - --let g:gundo_right = 0-- - display gundo on the left site
- [hammer](https://github.com/robgleeson/hammer.vim "hammer"): displays various markups (markdown,
  textile, rdoc, asciidoc) with one keystroke in the browser
  - **map <leader>m :Hammer<CR>** - press ,m to perform this action (depends on how you define
    _leader_ in your vimrc)
- [IndexSearch](https://github.com/vim-scripts/IndexedSearch "IndexSearch"): redefines the search
  (/,?) in Vim and creates custom messages about how many hits there are
  - _own settings_:
      - **let g:indexed_search_colors = 1** - turn of colors for messages
      - **let g:indexed_search_shortmess = 1** -  shorter messages
- [jQuery](http://www.vim.org/scripts/script.php?script_id=2416 "jQuery"): pretty colors for the
  jQuery syntax (_no doc_)
- [markdown](https://github.com/tpope/vim-markdown/tree/master/syntax "markdown"): markdown-syntax
  highlighting (_no doc_)
- [matchit](http://www.vim.org/scripts/script.php?script_id=39 "matchit"): press % to match tags in
  HTML, LaTeX and several other file formats (_no doc_)
- [NERDTree](https://github.com/scrooloose/nerdtree "NERDTree"): amazing file browser for GUI guys
  - **m** - choose which action to perform (add, move, copy, delete)
      - add / at the end to create a new directory
  - **r** - refresh the view
  - **O** - opens the node recursive from the parent node
  - **t** - opens th file in a new tab
  - **p** - jumps to the root tree
  - **T** - opens the file in a new tab and the focus will stay in the current window
  - **x** - closed the parent node, but leave the nodes above the node open (visual close)
  - **X** - closed all nodes which are under the actual node (physical close)
  - **R** - update the view
  - press **?** in the NERDTree window
  - **:NERDTreeFind** - open the current file in the NERDTree and expand the tree to this file
    location
  - _own settings_:
      - **let g:NERDTreeDirArrows = 1** - display nice arrows instead of bars and lines for the tree
        structure
      - **let g:NERDChristmasTree = 0** - less colorful tree (save performance)
      - **let g:NERDTreeHighlightCursorline = 0** - do not highlight line of cursor in NERDTree
      - **let g:NERDTreeMouseMode = 3** - one click will open the files
      - **let g:NERDTreeWinPos = 'right'** - NERDTree will opens on the right site of the window
      - **let g:NERDTreeWinSize = 30** - the width of the NERDTree when it opens
- [notes](https://github.com/xolox/vim-notes "notes"): note taking - perfect for _getting things
  done_
  - **:Note** - starts a new note => you can specify the name of the note in the header
  - **:write or :update** save the notes
  - **:RecentNotes** - overview of the last created changes
  - **:RelatedNotes** - shows all notes according to actual heading in the note
  - **:SearchNotes <pattern>** - search after all notes containing the specified pattern/word
  - **:edit note:<name-of-note>** - you can edit notes (other commands: _:split_, _:tabedit_)
  - **:NoteFromSelectedText** - create a new node from the selected text
  - **:DeleteNote** - deletes the actual note
  - **let g:notes_directory = '~/Documents/Notes'** - define the directory where files should be
    saved
  - it is possible to open notes directly from the command-line with **vim notes:collect**
  - _tags_
      - with @tag you can define own tags (they are useful for searching)
      - **:IndexTaggedNotes** creates new tags (for omnicomplete when @ is pressed)
      - **:ShowTaggedNotes** - will show all notes which are specified with a certain tag
- [padrino](https://github.com/brian9/vim-padrino "padrino"): adds syntax support for the
  [padrino](http://www.padrinorb.com/ "padrino") framework (_no doc_)
- [rake](https://github.com/tpope/vim-rake "rake"): run rake commands in vim
  - in the current directory needs to be a _Rakefile_ to perform this operation
  - **:Rake [task]** - just runs the specified task
- [session](https://github.com/xolox/vim-session "session"): save session and to open then later
  - **:SaveSession <name>** - save the current session under the specified name
  - **:OpenSession** - dialog to select the section you want to open
      - **:OpenSession <name>** - takes an existing session as input (use tab completion!)
  - **:DeleteSession** - choose the session you want to delete
  - **:ViewSession** - information about the loaded session (shows Vim internals - good for debugging)
- [sinatra](https://github.com/hallison/vim-ruby-sinatra "sinatra"): add syntax support for
  [sinatra](http://www.sinatrarb.com/ "sinatra") project (_no doc_)
- [snipmate](https://github.com/msanders/snipmate.vim "snipmate"): define your own snippets for faster coding
  - you can define own snippets (each file must have the name of the file type, for example contains
    the file _tex.snippets_ all snippets for latex documents)
  - better set the file type explicit for each type to load all snippets (_autocmd!
    BufRead,BufNewFile \-.haml set ft=haml_)
  - _own settings_:
      - **let g:snippets\_dir = '~/.vim/snippets'** - specify the snippet directory
      - the following settings are pushed in my vimrc:
          - autocmd! BufRead,BufNewFile -.haml set ft=haml
          - autocmd! BufRead,BufNewFile -.js set ft=js
          - autocmd! BufRead,BufNewFile -.mkd,-.markdown,-.md set ft=markdown
          - autocmd! BufRead,BufNewFile -.rb set ft=ruby
          - autocmd! BufRead,BufNewFile -.sass,-.scss set ft=sass
          - autocmd! BufRead,BufNewFile -.tex,-.latex set ft=tex
          - autocmd! BufRead,BufNewFile -.textile set ft=textile
          - autocmd! BufRead,BufNewFile -.yml set ft=yaml
- [speedating](https://github.com/tpope/vim-speeddating "speeddating"): a faster way to increment
  all kind of numbers
  - **CTRL-a** - ++ number
  - **CTRL-x** - -- number
  - **:SpeedDatingFormat** - shows the regular expression of possible formations
  - **:SpeedDatingFormat {}** - here you can specify the format which can be used to be recognized
    by the program
- [supertab](https://github.com/vim-scripts/SuperTab-continued. "supertab"): word auto completion
  with pressing the tab key
- [syntastic](https://github.com/scrooloose/syntastic "syntastic"): performs syntax check on various
  languages when saving
  - _own settings_:
      - **let g:syntastic\_enable\_signs=1** - setting signs for errors (arrows)
      - **let g:syntastic\_auto\_loc\_list=1** - open/close toc of errors
      - **let g:syntastic\_auto\_jump=1**  - jump to the place where the first error occurs
      - **let g:syntastic\_disabled\_filetypes = ['html']** - disable for this filetype
      - **set statusline+=%#warningmsg#**  - show warning messages
      - **set statusline+=%{SyntasticStatuslineFlag()}**  - show message in quickfix
      - **set statusline+=%-**  - set line (good for split windows
- [surround](https://github.com/tpope/vim-surround "surround")
  - **ds"** - stands for delete surround and will delete the surrounds - place the cursor in in the
    string with the surroundings
      - **example**: { :a => 1 } after pressing _ds{_ :a => 1
  - **cs("** - change surroundings and will replace the first surrounding argument with the second
    surrounding
      - **example**: (:a => 1) after pressing _cs({_ { :a => 1 }
  - **ys** - stands for "you surround" and the first argument specifies the scope and the second
    makes the replacement and the second using for wrapping up the first argument with the quotes
      - **ys2w\**_: will wrapp two following words (2w) with underscores (\_)
      - **yss{** - wraps the whole line
  - how to quote whole string?
      - mark the string in visual mode (either normal mode with _v_ or block mode with _V_), then
        press _s_ and then the quote ("", (), {}) you want to have and it wraps the string in this
- [sweet-rspec-vim](https://github.com/duskhacker/sweet-rspec-vim "sweet-rspec-vim"): run only one
  RSpec file
  - **:SweetVimRspecRunFile** - runs all specs on the current buffer
  - **:SweetVimRspecRunFocused** - runs the spec on the current line
  - **:SweetVimRspecRunPrevios** - runs the last spec again
  - _own settings_:
      - **let $SWEET_VIM_RSPEC_SHOW_PASSING="true"** - output the passes spec in quickfix window
- [tabular](https://github.com/godlygeek/tabular "tabular"): is a plugin to auto indent files
  according to the pattern
  - **:Tabularize / {pattern}**
  - _own settings_:
      - the following mappings are if you use the plugin several times on common cases
      - let mapleader = ","
      - nmap \<leader\>b= :Tabularize /=\<CR\>
      - vmap \<leader\>b= :Tabularize /=\<CR\>
      - nmap \<leader\>b: :Tabularize /:\<CR\>
      - vmap \<leader\>b: :Tabularize /:\<CR\>
      - nmap \<leader\>b/ :Tabularize /\/\/\<CR\>
      - vmap \<leader\>b/ :Tabularize /\/\/\<CR\>
      - nmap \<leader\>b" :Tabularize /"\<CR\>
      - vmap \<leader\>b" :Tabularize /"\<CR\>
      - nmap \<leader\>bt :Tabularize /& \\ldots &\<CR\>
      - vmap \<leader\>bt :Tabularize /& \\ldots &\<CR\>
- [tagbar](https://github.com/majutsushi/tagbar "tagbar"): better version of taglist for source
  source files (layout is the same as it is for the NERDTree)
  - [How to install exurberant ctags on mac](http://www.dreamincode.net/forums/blog/164/entry-1479-installing-exuberant-ctags-and-taglist-on-a-mac/ "how to install ctags in mac")
  - **:TagbarOpen** - opens the view tagbar
  - **:TagbarToggle** - opens or close the tagbar whether it was closed or open
  - **:TagbarOpenAutoClose** - opens the tagbar and close it after a tag was selected - the cursor
    jumps to it
  - _own settings_:
      - **nnoremap <silent> <F7> :TagbarToggle<CR>**
      - **nnoremap <silent> <F4> :TagbarOpenAutoClose<CR>**
      - **let g:tagbar_compact = 1** - don't show the help in the tagbar
- [yankring](http://www.vim.org/scripts/script.php?script_id=1234 "yankring"): better register
  management and saves up to 100 buffered lines
  - **:YRShow** - shows the actual buffer
  - **:YRClear** - deletes the buffer
  - **:YRSearch** - type in a word or regular expression to search the yankring after it
  - with **j** and **k** you can navigate between the different hits and with <enter> you can chose your entry
  - **d** delete an entry from from the yankring buffer - but you barely need this function
  - in the **YRShow** window you can use the visual buttons to select more than one setting
  - _own settings_:
      - **nmap <leader>y :YRShow<CR>**
      - **nmap <leader>x :YRCLear<CR>**
      - **let g:yankring_max_history = 1000** - save the last 1000 elements
- [vim-css-color](https://github.com/skammer/vim-css-color "css-color"): display Hex Color with real
  colors in Vim - very useful when working with CSS (_no docu_)
- [vim-css3 syntax](https://github.com/hail2u/vim-css3-syntax "vim-css3 syntax"): add syntax support
  for css3 (_no doc_)
- [vimerl](https://github.com/oscarh/vimerl "vimerl"): erlang file detection and syntax highlighting
  (_no doc_)
- [vim-haml](https://github.com/tpope/vim-haml "vim-haml"): file detection and syntax highlighting
  (_no doc_)
- [vim-less](https://github.com/groenewege/vim-less "vim-less"): syntax highlighting, indenting and
  auto completion for the dynamic style sheet language (_no docu_)
- [vim-ruby](https://github.com/vim-ruby/vim-ruby "vim-ruby"): ruby omnicompletion and syntax
  highlighting
  - **:let ruby_operators = 1** - create colors for ruby operators
  - **:let ruby\_space\_errors = 1** - mark whitespace characters
- [vim-liquid](https://github.com/tpope/vim-liquid "vim-liquid"): highlight liquid tags like {% ...
  %} (_no doc_)
- [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs "vim-nerdtree-tabs"): opens one
  NERDTree which is the same in every tab
  - _own settings_:
      - **map t <plug>NERDTreeTabsToggle<CR>**  - press t to toggle the NERDTree
- [vim-open-associated-programs](https://github.com/xolox/vim-open-associated-programs "vim-open-associated-programs"):
  open files and web pages in associated programs out of Vim (useful when you want to open links out of Vim)
  - has generally no mappings and just defines the programs which opens the specified file according
    to the file ending
  - mappings come from the bundle [vim-shell](https://github.com/xolox/vim-shell "vim-shell"):
      - **F6** open file and directory names, URLs and e-mail addresses under the cursor
          - **:Open http://wikimatze.de** alternate syntax
      - **F11** fullscreen in vim (works only under linux and not under mac because of the
        keybindings)
          - **:Fullscreen** alternate syntax for this command
- [vim-rails](http://github.com/tpope/vim-rails "vim-rails"): rails support in Vim (with some really
  great features)
  - **:RDoc** - browse the rails api
  - **:Rrefresh** - clear some cache settings in Rails
  - **:Rlog** - splits the actual window and opens the log-file
  - **:Rpreview [{path}]**  - opens the url _http://localhost:3000/path_ for the specified path
  - **:Rscript** - opens the rails console in a beautiful quickfix window
  - **gf** - will open models, views, controllers, partials and so on under which the cursor stands
      - _belongs\_to :projects_ - and if the cursor is below _:project_ it will open the model _Project_
  - jump to certain files according to the actual file
      - each command will open the finding in the actual window, you can modify each command with
        _V_ (vertical split), _S_ (horizontal split) _T_ (tab), for example _:RVview_, _:RSview_ or
        _:RTview_  and so on
      - **:Rcontroller** - opens the controller
      - **:Rfixtures** - opens the fixture file (instead of using fixtures I suggest using [factory girl](https://github.com/thoughtbot/factory_girl "factory girl"))
      - **:Rhelper** - opens the helper file
      - **:Rmodel** - opens the model file
      - **:Rspec** - open the spec file
      - **:Rview** - opens the view file
  - extracting code from the view and insert it into partials
      - **:2,3Rextract post** will extract lines 2,3 in the partial with the name _post_
      - you didn't need to specify the lines, it is possible to use visual mode: _:'<,'>Rextract
        juhu_, so the content will be inserted in the partial _juhu_
- [vis](https://github.com/vim-scripts/vis "vis"): you can execute commands only in the selected
  section of visual mode
    - mark a text in visual mode, then press :B and then you can perform any command (Ex command)
      you want
    - example: replace all '\-' through '-' => mark the block, press :B (you should have in your
      commandline :'<,'>:B) now press the typical text replacement commands you want (s/-/-) and you
      are done


## Colors scheme ##

I have found the following three for my taste - there are tons of other colors out there

- [ir black](https://github.com/borgand/ir_black "ir black"): looks a little bit frosty but the
  overall feeling is very fast
![ir black screen shot](https://github.com/matthias-guenther/vim-settings/raw/master/ir_black.png)
- [railscasts](https://github.com/jpo/vim-railscasts-theme "railscasts"): looks dusty and feels
  after editing
![railscasts screen shot](https://github.com/matthias-guenther/vim-settings/raw/master/railscasts.png)
- [vividchalk](https://github.com/tpope/vim-vividchalk.git "vividchalk"): is like railscasts but
  without the dusty looking and some really fancy colors
![vividchalk screen shot](https://github.com/matthias-guenther/vim-settings/raw/master/vividchalk.png)


## Contact ##

Feature request, bugs, questions, etc. can be send to <matthias.guenther@wikimatze.de>.


## License ##

This software is licensed under the [MIT license][mit].

© 2011 Matthias Guenther <matthias.guenther@wikimatze.de>.

[mit]: http://en.wikipedia.org/wiki/MIT_License

