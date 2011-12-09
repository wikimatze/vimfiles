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

* [AutoClose](http://www.vim.org/scripts/script.php?script_id=2009 "autoclose"): automatically close
  brackets - it will saves you a lot of finger acrobatic because you don't have to type closing
  brackets (_no doc_)
* [autocorrect](https://github.com/panozzaj/vim-autocorrect "autocorrect"): auto correct English
  spelling mistakes, when typing (_no doc_)
  * don't forget to put _:source /path/to/the/autocorrect.vim_ in your _.vimrc_
* [ack.vim](https://github.com/mileszs/ack.vim "ack.vim"): you can perform ack commands in Vim
  * __:Ack {pattern} [{directory}]__ - the basic command to search after words in your project
* [coffee-script](https://github.com/kchmck/vim-coffee-script "coffe-script"): add coffee script support for Vim (_no doc_)
* [cucumber](https://github.com/tpope/vim-cucumber "cucumber"): syntax-highlighting for cucumber files (_no doc_)
* [endwise-ruby](http://www.vim.org/scripts/script.php?script_id=2386 "endwise-ruby"): automatically
  adds keywords like _end_ to special constructs in ruby (_no doc_)
* [clojure](http://www.vim.org/scripts/script.php?script_id=2501 "clojure"): clojure support for Vim
  (_no doc_)
* [command-t](http://www.vim.org/scripts/script.php?script_id=3025 "command-t"): file search in the actual directory
  * __\<Leader\>-t__ - call _:CommandT_ command to open a specified file
      * __:CommandT ../path/to/other/files__ - search in the specified path
  * __\<Leader\>-b__ - opens the buffer for this files after which were searched in the past
  * __:CommandTFlush__ - update the path cache and also include new and deleted files
  * shortcuts for the navigation
      * __CTRL-j__ - go down
      * __CTRL-k__ - go up
      * __CTRL-t__ - opens the file in a new tab
      * __CTRL-s__ - opens the file under the cursor with a _horizontal_ split
      * __CTRL-v__ - opens the file under the cursor with a _vertcial_ split
      * __ESC or CTRL-c__ - closing the open dialog
      * __CTRL-u__ - clean the matching window
      * __CTRL-ENTER__ - opens the file under the cursor in a new window
  * _own settings_:
      * __let g:CommandTMaxFiles = 20000__ - max files that will be considered when scanning current directory
      * __let g:CommandTMaxDepth = 20__ - number of levels that will be considered when scanning current directory
      * __let g:CommandTAlwaysShowDotFiles = 1__ - also search after matching with dotted files
      * __let g:CommandTScanDotDirectories = 1__ - do not search in dot directory
      * __let g:CommandTMatchWindowAtTop = 0__ - the match window will appear at the top of the editor window
      * __let g:CommandTAcceptSelectionMap = '\<CR\>'__ - enter open findings in same window
      * __let g:CommandTAcceptSelectionSplitMap = '\<C-s\>'__ - _CTRL-Enter_ will makes a horizontal split
      * __let g:CommandTAcceptSelectionVSplitMap = '\<C-v\>'__ - _CTRL-v_ will make a vertical split
      * __let g:CommandTAcceptSelectionTabMap = '\<C-t\>'__ - _CTRL-t_ will open the file in a new tab
      * __set wildignore+=*.o,*.obj,.git,.svn,vendor/rails/**__ - which files should not be matched in command-t
* [fugitive](http://github.com/tpope/vim-fugitive "vim-fugitive"): git wrapper
  * __:Gstatus__ - git status
      * __CTRL-n__ - go to the next file
      * __CTRL-p__ - go to the preview file
  * __:Gwrite__ - git add
  * __:Gcommit__ - git commit (press _wq_ for send)
  * __:Gblame__ - git blame
  * __:Gmove__ - git mv
  * __:Gremove__ - git rm
  * __:Glog__ - git log
  * __:Gdiff__ - split the window and display the changes
  * __:Ggrep__ - does a _grep_ in the tree
  * __:Gbrowse__ - opens the actual file in the browser (normally its on github)
  * __:Git__ - after this you can perform every other normal git command you want
* [Grep.vim](http://www.vim.org/scripts/script.php?script_id=311 "Grep.vim"): using grep to search
  after files - a good alternative to grep (*no doc*)
* [Gist.vim](https://github.com/mattn/gist-vim "Gist.vim"): upload files directly to github with just one command
  * first setup your git credentials __let g:github_user = 'your-name'__ and __let g:github_token = 'token'__  in your _.vimrc_
      * is the API Token which can be found under Account Settings under Account Admin on [github](https://github.com "github")
  * __:Gist__ - post whole text to gist
  * __:Gist XXXXX__ - get gist XXXXX
  * __:Gist -l__ - list all my gist
  * _own settings_:
      * __let g:gist\_detect\_filetype = 1__ - detecting file type for each gist
      * __let g:gist\_open\_browser\_after_post = 1__ - open the gist after each post
* [gundo](http://sjl.bitbucket.org/gundo.vim/ "gundo"): graph the changes of your file saves in different a nice tree
  - **k** - move one step top
  - **j** - move one step below
  - **gg** - move to the button
  - **G** - move to the top
  - **Enter or double click** - revert the changes of the file to the current file
  - **p** - will open a preview to show the differences from the selected and the current version
    (just imagine a `git diff`)
  - *own settings*:
      - **let g:gundo_width = 45** - horizontal width
      - **let g:gundo_preview_height = 15** - vertical height
      - **let g:gundo_help = 1** - show the help in gundo window
      - **let g:gundo_close_on_revert = 0** - don't close gundo after a version is selected
      - **let g:gundo_right = 0** - display gundo on the left site
* [hammer](https://github.com/robgleeson/hammer.vim "hammer"): displays various markups (markdown, textile, rdoc, asciidoc) with one keystroke in the browser
  * __map <leader>m :Hammer<CR>__ - press ,m to perform this action (depends on how you define _leader_ in your vimrc)
* [IndexSearch](https://github.com/vim-scripts/IndexedSearch "IndexSearch"): redefines the search (/,?) in Vim and creates custom messages about how many hits there are
  * _own settings_:
      * __let g:indexed_search_colors = 1__ - turn of colors for messages
      * __let g:indexed_search_shortmess = 1__ -  shorter messages
* [jQuery](http://www.vim.org/scripts/script.php?script_id=2416 "jQuery"): pretty colors for the jQuery syntax (_no doc_)
* [markdown](https://github.com/tpope/vim-markdown/tree/master/syntax "markdown"): markdown-syntax highlighting (_no doc_)
* [matchit](http://www.vim.org/scripts/script.php?script_id=39 "matchit"): press % to match tags in HTML, LaTeX and several other file formats (_no doc_)
* [NERDTree](https://github.com/scrooloose/nerdtree "NERDTree"): amazing file browser for GUI guys
  * __m__ - choose which action to perform (add, move, copy, delete)
      * add / at the end to create a new directory
  * __r__ - refresh the view
  * __O__ - opens the node recursive from the parent node
  * __t__ - opens th file in a new tab
  * __p__ - jumps to the root tree
  * __T__ - opens the file in a new tab and the focus will stay in the current window
  * __x__ - closed the parent node, but leave the nodes above the node open (visual close)
  * __X__ - closed all nodes which are under the actual node (physical close)
  * __R__ - update the view
  * press __?__ in the NERDTree window
  * __:NERDTreeFind__ - open the current file in the NERDTree and expand the tree to this file location
  * _own settings_:
      * __let g:NERDTreeDirArrows = 1__ - display nice arrows instead of bars and lines for the tree structure
      * __let g:NERDChristmasTree = 0__ - less colorful tree (save performance)
      * __let g:NERDTreeHighlightCursorline = 0__ - do not highlight line of cursor in NERDTree
      * __let g:NERDTreeMouseMode = 3__ - one click will open the files
      * __let g:NERDTreeWinPos = 'right'__ - NERDTree will opens on the right site of the window
      * __let g:NERDTreeWinSize = 30__ - the width of the NERDTree when it opens
* [notes](https://github.com/xolox/vim-notes "notes"): note taking - perfect for _getting things done_
  * __:Note__ - starts a new note => you can specify the name of the note in the header
  * __:write or :update__ save the notes
  * __:RecentNotes__ - overview of the last created changes
  * __:RelatedNotes__ - shows all notes according to actual heading in the note
  * __:SearchNotes <pattern>__ - search after all notes containing the specified pattern/word
  * __:edit note:<name-of-note>__ - you can edit notes (other commands: _:split_, _:tabedit_)
  * __:NoteFromSelectedText__ - create a new node from the selected text
  * __:DeleteNote__ - deletes the actual note
  * __let g:notes_directory = '~/Documents/Notes'__ - define the directory where files should be saved
  * it is possible to open notes directly from the command-line with __vim notes:collect__
  * _tags_
      * with @tag you can define own tags (they are useful for searching)
      * __:IndexTaggedNotes__ creates new tags (for omnicomplete when @ is pressed)
      * __:ShowTaggedNotes__ - will show all notes which are specified with a certain tag
* [padrino](https://github.com/brian9/vim-padrino "padrino"): adds syntax support for the [padrino](http://www.padrinorb.com/ "padrino") framework (_no doc_)
* [rake](https://github.com/tpope/vim-rake "rake"): run rake commands in vim
  * in the current directory needs to be a _Rakefile_ to perform this operation
  * __:Rake [task]__ - just runs the specified task
* [session](https://github.com/xolox/vim-session "session"): save session and to open then later
  * __:SaveSession <name>__ - save the current session under the specified name
  * __:OpenSession__ - dialog to select the section you want to open
      * __:OpenSession <name>__ - takes an existing session as input (use tab completion!)
  * __:DeleteSession__ - choose the session you want to delete
  * __:ViewSession__ - information about the loaded session (shows Vim internals - good for debugging)
* [sinatra](https://github.com/hallison/vim-ruby-sinatra "sinatra"): add syntax support for [sinatra](http://www.sinatrarb.com/ "sinatra") project (_no doc_)
* [snipmate](https://github.com/msanders/snipmate.vim "snipmate"): define your own snippets for faster coding
  * you can define own snippets (each file must have the name of the file type, for example contains the file _tex.snippets_ all snippets for latex documents)
  * better set the file type explicit for each type to load all snippets (_autocmd! BufRead,BufNewFile \*.haml set ft=haml_)
  * _own settings_:
      * __let g:snippets\_dir = '~/.vim/snippets'__ - specify the snippet directory
      * the following settings are pushed in my vimrc:
          * autocmd! BufRead,BufNewFile *.haml set ft=haml
          * autocmd! BufRead,BufNewFile *.js set ft=js
          * autocmd! BufRead,BufNewFile *.mkd,*.markdown,*.md set ft=markdown
          * autocmd! BufRead,BufNewFile *.rb set ft=ruby
          * autocmd! BufRead,BufNewFile *.sass,*.scss set ft=sass
          * autocmd! BufRead,BufNewFile *.tex,*.latex set ft=tex
          * autocmd! BufRead,BufNewFile *.textile set ft=textile
          * autocmd! BufRead,BufNewFile *.yml set ft=yaml
* [speedating](https://github.com/tpope/vim-speeddating "speeddating"): a faster way to increment all kind of numbers
  * __CTRL-a__ - ++ number
  * __CTRL-x__ - -- number
  * __:SpeedDatingFormat__ - shows the regular expression of possible formations
  * __:SpeedDatingFormat {}__ - here you can specify the format which can be used to be recognized by the program
* [supertab](https://github.com/vim-scripts/SuperTab-continued. "supertab"): word auto completion with pressing the tab key
* [syntastic](https://github.com/scrooloose/syntastic "syntastic"): performs syntax check on various languages when saving
  * _own settings_:
      * __let g:syntastic\_enable\_signs=1__ - setting signs for errors (arrows)
      * __let g:syntastic\_auto\_loc\_list=1__ - open/close toc of errors
      * __let g:syntastic\_auto\_jump=1__  - jump to the place where the first error occurs
      * __let g:syntastic\_disabled\_filetypes = ['html']__ - disable for this filetype
      * __set statusline+=%#warningmsg#__  - show warning messages
      * __set statusline+=%{SyntasticStatuslineFlag()}__  - show message in quickfix
      * __set statusline+=%*__  - set line (good for split windows
* [surround](https://github.com/tpope/vim-surround "surround")
  * __ds"__ - stands for delete surround and will delete the surrounds - place the cursor in in the string with the surroundings
      * __example__: { :a => 1 } after pressing _ds{_ :a => 1
  * __cs("__ - change surroundings and will replace the first surrounding argument with the second surrounding
      * __example__: (:a => 1) after pressing _cs({_ { :a => 1 }
  * __ys__ - stands for "you surround" and the first argument specifies the scope and the second makes the replacement and the second using for wrapping up the first argument with the quotes
      * __ys2w\___: will wrapp two following words (2w) with underscores (\_)
      * __yss{__ - wraps the whole line
  * how to quote whole string?
      * mark the string in visual mode (either normal mode with _v_ or block mode with _V_), then press _s_ and then the quote ("", (), {}) you want to have and it wraps the string in this
* [sweet-rspec-vim](https://github.com/duskhacker/sweet-rspec-vim "sweet-rspec-vim"): run only one RSpec file
  * __:SweetVimRspecRunFile__ - runs all specs on the current buffer
  * __:SweetVimRspecRunFocused__ - runs the spec on the current line
  * __:SweetVimRspecRunPrevios__ - runs the last spec again
  * _own settings_:
      * __let $SWEET_VIM_RSPEC_SHOW_PASSING="true"__ - output the passes spec in quickfix window
* [tabular](https://github.com/godlygeek/tabular "tabular"): is a plugin to auto indent files according to the pattern
  * __:Tabularize / {pattern}__
  * _own settings_:
      * the following mappings are if you use the plugin several times on common cases
      * let mapleader = ","
      * nmap \<leader\>b= :Tabularize /=\<CR\>
      * vmap \<leader\>b= :Tabularize /=\<CR\>
      * nmap \<leader\>b: :Tabularize /:\<CR\>
      * vmap \<leader\>b: :Tabularize /:\<CR\>
      * nmap \<leader\>b/ :Tabularize /\/\/\<CR\>
      * vmap \<leader\>b/ :Tabularize /\/\/\<CR\>
      * nmap \<leader\>b" :Tabularize /"\<CR\>
      * vmap \<leader\>b" :Tabularize /"\<CR\>
      * nmap \<leader\>bt :Tabularize /& \\ldots &\<CR\>
      * vmap \<leader\>bt :Tabularize /& \\ldots &\<CR\>
* [tagbar](https://github.com/majutsushi/tagbar "tagbar"): better version of taglist for source source files (layout is the same as it is for the NERDTree)
  * [How to install exurberant ctags on mac](http://www.dreamincode.net/forums/blog/164/entry-1479-installing-exuberant-ctags-and-taglist-on-a-mac/ "how to install ctags in mac")
  * __:TagbarOpen__ - opens the view tagbar
  * __:TagbarToggle__ - opens or close the tagbar whether it was closed or open
  * __:TagbarOpenAutoClose__ - opens the tagbar and close it after a tag was selected - the cursor jumps to it
  * _own settings_:
      * __nnoremap <silent> <F7> :TagbarToggle<CR>__
      * __nnoremap <silent> <F4> :TagbarOpenAutoClose<CR>__
      * __let g:tagbar_compact = 1__ - don't show the help in the tagbar
* [yankring](http://www.vim.org/scripts/script.php?script_id=1234 "yankring"): better register management and saves up to 100 buffered lines
  * __:YRShow__ - shows the actual buffer
  * __:YRClear__ - deletes the buffer
  * __:YRSearch__ - type in a word or regular expression to search the yankring after it
  * with __j__ and __k__ you can navigate between the different hits and with <enter> you can chose your entry
  * __d__ delete an entry from from the yankring buffer - but you barely need this function
  * in the __YRShow__ window you can use the visual buttons to select more than one setting
  * _own settings_:
      * __nmap <leader>y :YRShow<CR>__
      * __nmap <leader>x :YRCLear<CR>__
      * __let g:yankring_max_history = 1000__ - save the last 1000 elements
* [vim-css-color](https://github.com/skammer/vim-css-color "css-color"): display Hex Color with real colors in Vim - very useful when working with CSS (_no docu_)
* [vim-css3 syntax](https://github.com/hail2u/vim-css3-syntax "vim-css3 syntax"): add syntax support for css3 (_no doc_)
* [vimerl](https://github.com/oscarh/vimerl "vimerl"): erlang file detection and syntax highlighting (_no doc_)
* [vim-haml](https://github.com/tpope/vim-haml "vim-haml"): file detection and syntax highlighting (_no doc_)
* [vim-less](https://github.com/groenewege/vim-less "vim-less"): syntax highlighting, indenting and auto completion for the dynamic style sheet language (_no docu_)
* [vim-ruby](https://github.com/vim-ruby/vim-ruby "vim-ruby"): ruby omnicompletion and syntax highlighting
  * __:let ruby_operators = 1__ - create colors for ruby operators
  * __:let ruby\_space\_errors = 1__ - mark whitespace characters
* [vim-liquid](https://github.com/tpope/vim-liquid "vim-liquid"): highlight liquid tags like {% ... %} (_no doc_)
* [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs "vim-nerdtree-tabs"): opens one NERDTree which is the same in every tab
  * _own settings_:
      * __map t <plug>NERDTreeTabsToggle<CR>__  - press t to toggle the NERDTree
* [vim-open-associated-programs](https://github.com/xolox/vim-open-associated-programs "vim-open-associated-programs"): open files and web pages in associated programs out of Vim (useful when you want to open links out of Vim)
  * has generally no mappings and just defines the programs which opens the specified file according to the file ending
  * mappings come from the bundle [vim-shell](https://github.com/xolox/vim-shell "vim-shell"):
      * __F6__ open file and directory names, URLs and e-mail addresses under the cursor
          * __:Open http://wikimatze.de__ alternate syntax
      * __F11__ fullscreen in vim (works only under linux and not under mac because of the keybindings)
          * __:Fullscreen__ alternate syntax for this command
* [vim-rails](http://github.com/tpope/vim-rails "vim-rails"): rails support in Vim (with some really great features)
  * __:RDoc__ - browse the rails api
  * __:Rrefresh__ - clear some cache settings in Rails
  * __:Rlog__ - splits the actual window and opens the log-file
  * __:Rpreview [{path}]__  - opens the url _http://localhost:3000/path_ for the specified path
  * __:Rscript__ - opens the rails console in a beautiful quickfix window
  * __gf__ - will open models, views, controllers, partials and so on under which the cursor stands
      * _belongs\_to :projects_ - and if the cursor is below _:project_ it will open the model _Project_
  * jump to certain files according to the actual file
      * each command will open the finding in the actual window, you can modify each command with _V_ (vertical split), _S_ (horizontal split) _T_ (tab), for example _:RVview_, _:RSview_ or _:RTview_  and so on
      * __:Rcontroller__ - opens the controller
      * __:Rfixtures__ - opens the fixture file (instead of using fixtures I suggest using [factory girl](https://github.com/thoughtbot/factory_girl "factory girl"))
      * __:Rhelper__ - opens the helper file
      * __:Rmodel__ - opens the model file
      * __:Rspec__ - open the spec file
      * __:Rview__ - opens the view file
  * extracting code from the view and insert it into partials
      * __:2,3Rextract post__ will extract lines 2,3 in the partial with the name _post_
      * you didn't need to specify the lines, it is possible to use visual mode: _:'<,'>Rextract juhu_, so the content will be inserted in the partial _juhu_
* [vis](https://github.com/vim-scripts/vis "vis"): you can execute commands only in the selected section of visual mode
    * mark a text in visual mode, then press :B and then you can perform any command (Ex command) you want
    * example: replace all '\*' through '-' => mark the block, press :B (you should have in your
      commandline :'<,'>:B) now press the typical text replacement commands you want (s/*/-) and you
      are done


## Colors scheme ##

I have found the following three for my taste - there are tons of other colors out there

* [ir black](https://github.com/borgand/ir_black "ir black"): looks a little bit frosty but the overall feeling is very fast
![ir black screen shot](https://github.com/matthias-guenther/vim-settings/raw/master/ir_black.png)
* [railscasts](https://github.com/jpo/vim-railscasts-theme "railscasts"): looks dusty and feels after editing
![railscasts screen shot](https://github.com/matthias-guenther/vim-settings/raw/master/railscasts.png)
* [vividchalk](https://github.com/tpope/vim-vividchalk.git "vividchalk"): is like railscasts but without the dusty looking and some really fancy colors
![vividchalk screen shot](https://github.com/matthias-guenther/vim-settings/raw/master/vividchalk.png)


## Contact ##

Feature request, bugs, questions, etc. can be send to <matthias.guenther@wikimatze.de>.


## License ##

This software is licensed under the [MIT license][mit].

© 2011 Matthias Guenther <matthias.guenther@wikimatze.de>.

[mit]: http://en.wikipedia.org/wiki/MIT_License

