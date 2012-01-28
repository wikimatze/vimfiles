# Original: http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen
git_bundles = [
  "git://git.wincent.com/command-t.git",
  "git://github.com/brian9/vim-padrino.git",
  "git://github.com/duskhacker/sweet-rspec-vim",
  "git://github.com/gerw/vim-latex-suite.git",
  "git://github.com/godlygeek/tabular.git",
  "git://github.com/groenewege/vim-less.git",
  "git://github.com/hail2u/vim-css3-syntax.git",
  "git://github.com/hallison/vim-ruby-sinatra.git",
  "git://github.com/jistr/vim-nerdtree-tabs.git",
  "git://github.com/kchmck/vim-coffee-script.git",
  "git://github.com/majutsushi/tagbar.git",
  "git://github.com/mattn/gist-vim.git",
  "git://github.com/mileszs/ack.vim",
  "git://github.com/matthias-guenther/tocdown.git",
  "git://github.com/msanders/snipmate.vim.git",
  "git://github.com/othree/html5-syntax.vim.git",
  "git://github.com/panozzaj/vim-autocorrect.git",
  "git://github.com/robgleeson/hammer.vim.git",
  "git://github.com/scrooloose/nerdtree.git",
  "git://github.com/scrooloose/syntastic.git",
  "git://github.com/sjl/gundo.vim.git",
  "git://github.com/skammer/vim-css-color.git",
  "git://github.com/tpope/vim-cucumber.git",
  "git://github.com/tpope/vim-fugitive.git",
  "git://github.com/tpope/vim-git.git",
  "git://github.com/tpope/vim-haml.git",
  "git://github.com/tpope/vim-liquid.git",
  "git://github.com/tpope/vim-markdown.git",
  "git://github.com/tpope/vim-rails.git",
  "git://github.com/tpope/vim-repeat.git",
  "git://github.com/tpope/vim-speeddating.git",
  "git://github.com/tpope/vim-surround.git",
  "git://github.com/tsaleh/vim-align.git",
  "git://github.com/tsaleh/vim-matchit.git",
  "git://github.com/tsaleh/vim-shoulda.git",
  "git://github.com/vim-ruby/vim-ruby.git",
  "git://github.com/vim-scripts/IndexedSearch.git",
  "git://github.com/vim-scripts/SuperTab-continued..git",
  "git://github.com/vim-scripts/taglist.vim.git",
  "git://github.com/vim-scripts/vis.git",
  "git://github.com/xolox/vim-notes.git",
  "git://github.com/xolox/vim-open-associated-programs.git",
  "git://github.com/xolox/vim-session.git",
  "git://github.com/xolox/vim-shell.git",
  "git://github.com/tpope/vim-endwise.git",
  # not used but is in the README
    # git://github.com/timcharper/textile.vim
    # "git://github.com/oscarh/vimerl.git",
  # document in the README
    #"git://github.com/2072/PHP-Indenting-for-VIm.git",
  # colorschemes
   # "git://github.com/borgand/ir_black.git",
   # "git://github.com/jpo/vim-railscasts-theme.git",
   # "git://github.com/tpope/vim-vividchalk.git",
  # to be install and put in the README
    # "git://github.com/kchmck/vim-coffee-script" sett the correct path
]

vim_org_scripts = [
  ["grep", "7645",  "plugin"],
  ["yankring", "16536",  "zip"],
  ["bufexplorer", "14208",  "zip"],
  ["jquery", "15752", "syntax"],
  ["calender", "14880", "plugin"],
  ["autoclose", "9223", "plugin"],
]

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.cd(bundles_dir)

trash = ARGV.include?('--trash')

if trash
  puts "Trashing everything (lookout!)"
  Dir["*"].each {|d| FileUtils.rm_rf d }
end

git_bundles.each do |url|
  dir = url.split('/').last.sub(/\.git$/, '')
  if !trash && File.exists?(dir)
    puts " Skipping #{dir}"
    next
  end
  puts " Unpacking #{url} into #{dir}"
  `git clone #{url} #{dir}`
  FileUtils.rm_rf(File.join(dir, ".git"))
end

vim_org_scripts.each do |name, script_id, script_type|
  local_file = File.join(name, script_type, "#{name}.#{script_type == 'zip' ? 'zip' : 'vim'}")
  if !trash && File.exists?(local_file)
    puts " Skipping #{local_file}"
    next
  end
  puts " Downloading #{name}"
  FileUtils.mkdir_p(File.dirname(local_file))
  File.open(local_file, "w") do |file|
    file << open("http://www.vim.org/scripts/download_script.php?src_id=#{script_id}").read
  end
  if script_type == 'zip'
    %x(unzip -d #{name} #{local_file})
  end
end

