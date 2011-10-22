# Original: http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen

git_bundles = [
  "git://git.wincent.com/command-t.git",
  "https://github.com/brian9/vim-padrino.git",
  "https://github.com/duskhacker/sweet-rspec-vim",
  "https://github.com/gerw/vim-latex-suite.git",
  "https://github.com/godlygeek/tabular.git",
  "https://github.com/groenewege/vim-less.git",
  "https://github.com/hail2u/vim-css3-syntax.git",
  "https://github.com/hallison/vim-ruby-sinatra.git",
  "https://github.com/jistr/vim-nerdtree-tabs.git",
  "https://github.com/kchmck/vim-coffee-script.git",
  "https://github.com/majutsushi/tagbar.git",
  "https://github.com/mattn/gist-vim.git",
  "https://github.com/mileszs/ack.vim",
  "https://github.com/msanders/snipmate.vim.git",
  "https://github.com/oscarh/vimerl.git",
  "https://github.com/othree/html5-syntax.vim.git",
  "https://github.com/panozzaj/vim-autocorrect.git",
  "https://github.com/robgleeson/hammer.vim.git",
  "https://github.com/scrooloose/nerdtree.git",
  "https://github.com/scrooloose/syntastic.git",
  "https://github.com/skammer/vim-css-color.git",
  "https://github.com/timcharper/textile.vim.git",
  "https://github.com/tpope/vim-cucumber.git",
  "https://github.com/tpope/vim-fugitive.git",
  "https://github.com/tpope/vim-git.git",
  "https://github.com/tpope/vim-haml.git",
  "https://github.com/tpope/vim-liquid.git",
  "https://github.com/tpope/vim-markdown.git",
  "https://github.com/tpope/vim-rails.git",
  "https://github.com/tpope/vim-rake.git",
  "https://github.com/tpope/vim-repeat.git",
  "https://github.com/tpope/vim-speeddating.git",
  "https://github.com/tpope/vim-surround.git",
  "https://github.com/tsaleh/vim-align.git",
  "https://github.com/tsaleh/vim-matchit.git",
  "https://github.com/tsaleh/vim-shoulda.git",
  "https://github.com/vim-ruby/vim-ruby.git",
  "https://github.com/vim-scripts/IndexedSearch.git",
  "https://github.com/vim-scripts/SuperTab-continued..git",
  "https://github.com/vim-scripts/taglist.vim.git",
  "https://github.com/vim-scripts/vis.git",
  "https://github.com/xolox/vim-notes.git",
  "https://github.com/xolox/vim-open-associated-programs.git",
  "https://github.com/xolox/vim-session.git",
  "https://github.com/xolox/vim-shell.git",
  # document in the README
  # colorschemes
    "https://github.com/borgand/ir_black.git",
    "https://github.com/jpo/vim-railscasts-theme.git",
    "https://github.com/tpope/vim-vividchalk.git",
  # to be install and put in the README
    # "https://github.com/kchmck/vim-coffee-script" sett the correct path
]

vim_org_scripts = [
  ["endwise-ruby", "9299",  "plugin"],
  ["clojure", "13986",  "zip"],
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

