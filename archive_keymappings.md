# LaTeX-Suite
- `,ll` → compile the actual document (normally in dvi format)
- `,lv` → opens the compiled .dvi file with xdvi
- `,lj` → opens the compiled .dvi file just in the place where your cursor is the tex document
 you are compiling
- `Ctrl+Shift→j` → jumps to the placeholder in the document
- `n` → jumps to the next error
- `b` → jumps to the previous error
- `working with multiple files`
  - create a empty file with the name `<yourmain>.tex`
  - after that you can normally compile every included other tex document (if you are splitting up your tex→project)
- `forward search` (the shortcut for this is `,lv` → the rest is the theoretical explanation of
 it)
  - compile your tex-document normally
  - start the `\ls` mode
  - where the cursor is, this place will be displayed in the .dvi file
- `inverse (reverse) search`
  - `<C-Left>` left mouse click in the .dvi file this location will be opend in the source file
- `Links`
  - http://vim":http://vim→latex.sourceforge.net/documentation/latex-suite.html#latex-project-example
  - http://vim":http://vim→latex.sourceforge.net/documentation/latex-suite-quickstart


