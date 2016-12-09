Quick Links: [vim cheatsheet](http://www.worldtimzone.com/res/vi.html), [vim-go tutorial](https://github.com/fatih/vim-go-tutorial)

#### Learning right now

* ,v ---> :GoDef with vertical split
* ,i ---> :GoInfo
* K ---> :GoDoc
* :GoRename ----> refactor variable
* motion+if+tab ---> inside function braces - example: vif select contents of function inside braces
* motion+af+tab ---> all function - example: vaf select contents of function including function definition

#### Leader Mappings (,)

* b ---> :GoBuild
* r ---> :GoRun
* a ---> :cclose ---> close quick fix
* t ---> :GoTest
* c ---> :GoCoverageToggle
* l ---> :GoMetaLinter
* v ---> :GoDef with vertical split
* s ---> :GoDef with horizontal split
* i ---> :GoInfo

#### Snippets ([link to all](https://github.com/fatih/vim-go/blob/master/gosnippets/UltiSnips/go.snippets),  [tutorial](https://github.com/fatih/vim-go-tutorial#snippets)) + tab + ctrl+j

* errp ---> if err then panic
* errn ---> if err then return err
* fn ---> fmt.Println()
* ff ---> fmt.Printf()
* ln ---> log.Println()
* lf ---> log.Printf()
* json ---> json:"VARIABLE_PUT_HERE"

Add more snippets to [go.snippets](https://github.com/cboecking/golang-env-setup/blob/master/utils/go.snippets)

#### Keystrokes

* if ---> inside function braces - example: vif select contents of function inside braces
* af ---> all function - example: vaf select contents of function including function definition
* gd ---> go to definition (also CTRL+]) - overrides vim gd
* CTRL+t ---> go back from gd or CTRL+]
* ]] ---> next function
* [[ ---> previous function
* K ---> :GoDoc

#### Commands

* :GoBuild ---> save and compile packages and dependencies (includes tests)
* :GoRun ---> save, compile and run program
* :GoInstall ---> save, compile and install packages and dependencies
* :GoTest ---> test packages
* :GoTestFunc ---> execute test function under your cursor (from test file)
* :GoTestCompile ---> compiles your test file
* :GoCoverage ---> shows your test coverage
* :GoCoverageClear ---> clears coverage formatting
* :GoCoverageToggle ---> toggles between GoCoverage and GoCoverageClear
* :GoMetaLinter ---> runs go vet, golint and errcheck concurrently (note: subset run on save)
* :GoAlternate ---> toggle between file and its test file
  * :A ---> same as :GoAlternate
  * :AV ---> :A w/ vertical separator
  * :AS ---> :A w/ horizontal separator
  * :AT ---> :A in new tab
* :GoDef ---> jumps to any identifier's declaration
* :GoDefStack ---> shows the stack of :GoDef
* :GoDefStackClear ---> clears :GoDefStack
* :GoDoc ---> opens scratch window with documentation (esc to exit)
* :GoInfo ---> show signature in status line

#### Guru ([tutorial](https://github.com/fatih/vim-go-tutorial#guru))

* :GoReferrers ---> finds references to the selected identifier
* :GoDescribe ---> like :GoInfo only more detailed
* :GoImplements ---> finds what interfaces a type is implementing

#### Quickfix

* CTRL+n ---> :cnext ---> jump to next error
* CTRL+m ---> :cprevious ---> jump to previous error
* :cclose ---> close quick fix

#### Other

* nnoremap <Leader><space> :noh<cr> ---> add to .vimrc to clear last search highlight
