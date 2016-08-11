Quick Links: [vim cheatsheet](http://www.worldtimzone.com/res/vi.html), [vim-go tutorial](https://github.com/fatih/vim-go-tutorial)

#### Leader Mappings (,)

* b ---> :GoBuild
* r ---> :GoRun
* a ---> :cclose ---> close quick fix
* t ---> :GoTest
* c ---> :GoCoverageToggle
* l ---> :GoMetaLinter
* v ---> :GoDef with vertical split
* s ---> :GoDef with horizontal split

#### Snippets ([link to all](https://github.com/fatih/vim-go/blob/master/gosnippets/UltiSnips/go.snippets),  [tutorial](https://github.com/fatih/vim-go-tutorial#snippets)) + tab

* errp ---> if err then panic
* fn ---> fmt.Println()
* ff ---> fmt.Printf()
* ln ---> log.Println()
* lf ---> log.Printf()
* json ---> `json:"VARIABLE_HERE"`

#### Keystrokes

* if ---> inside function braces - example: vif select contents of function inside braces
* af ---> all function - example: vaf select contents of function including function definition

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
* :GoMetaLinter ---> runs go vet, golint and errcheck concurrently
* :GoAlternate ---> toggle between file and its test file
  * :A ---> same as :GoAlternate
  * :AV ---> :A w/ vertical separator
  * :AS ---> :A w/ horizontal separator
  * :AT ---> :A in new tab
* :GoDef ---> jumps to any identifier's declaration

#### Quickfix

* CTRL+n ---> :cnext ---> jump to next error
* CTRL+m ---> :cprevious ---> jump to previous error
* :cclose ---> close quick fix
