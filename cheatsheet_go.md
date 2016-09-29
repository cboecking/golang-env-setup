####Program structure

declaration (:=) vs assignment (=)

Pointer Example:
```
x := 1 //assign value
p = &x //p points to the address of x, p is of type *int
fmt.Println(*p) //"1"
*p = 2 //value at p = 2, equivalent to x = 2
fmt.Println(*p) //"2"
fmt.Println(x) //"2"
```
Pointer vocabulary

* & = "Address of"
* * = "value at"

zero value of a pointer is nil - nil is comparable

vim-go questions:

1. know type of a given variable
2. find all references of a variable (find all pointers)

'new' keyword - rarely used  
```
p := new(int)   //p of type *int where *p (value at) is default "0"
                //prevents creating dummy variable just to get the address
```
Assignment:
```
x = 1  //direct
*P = 2 //indirect
```
Tuple Assignment:
```
a, b, c = 1, 2, 3
x, y = y, x
```
You can create new types from existing types
```
type Currency float64 //understood that currency would not be float!!
```

Special init() function - cannot be called; however, executed when package is initialized. Example: used by db providers where the implementation sits behind an interface. -- IS this a true statement - worded correct?

Each source file can have its own init() function.

####Go 'Types'
* Basic
  * Numbers
  * Strings
  * Booleans
* Aggregate
  * Arrays
  * Structs
* Reference
  * Pointers
  * Slices
  * Maps
  * Functions
  * Channels
* Interface

Type conversion - for every type T, T(x) converts the value of x to T (if allowed)  
Question: can you / how do you specify the conversion?

####How to Create new Types and Variables

* Integer Type
  * `var a int` //a declared as an int with a default value = 0 
  * `a := 5` //a declared as an int with a value = 5
* Float Type
  * `var b float64` //b declared as an float64 with a default value = 0.0
  * `b := 3.3` //b declared as a float64 with a value = 3.3
* Boolean Type
  * `var c bool` //c declared as boolean with a default value = false
  * `c := true` //c declared as boolean with a value = true
* String Type
  * `var d string` //d declared as a string with a default value = ""
  * `d := "chucksteak"` //literal - d declared as a string with a value = "chucksteak"
  * ``d := `steak` `` //raw literal - d declared as a string with a value = "steak"
    * Note: raw literals ignore escape characters and new lines (can span multiple lines)
* Array Type
  * `var e [10]string` //e declared as an array of size 10 elements whose elements are default
  * `e := [...]int{5,6,7}` //e declared as an array of size 3 elements whose elements e[0]=5, e[1]=6, etc...
  * `e := [...]string{1:"one", 5:"five"}` //e declared as an array of size 6 elements whose elements e[1]="one", e[5]="five, all others are default
* Struct Type
  * create struct type 
    * `type f struct {field1, field2 string}`
  * create variable from a struct
    * `var example f` //example declared as a struct of type f. example fields are default
    * `example := f{"ex1", "ex2"}` //example declared as a struct of type f. example fields are set to "ex1" and "ex2" based on the order of the struct definition.
    * `example := f{field2: "ex2", field1: "ex1"}` //example declared as a struct of type f. example fields are set to "ex1" and "ex2" explicitly without regard to order.
* Pointer Type
  * Assume for the following statements: `x := 4` //x declared as int of value 4
  * `var y *int` //y declared as a pointer to an int (*int) and defaults to nil
  * `y = &x` //y assigned to the address of x
  * `y := new(int)` //y declared as *int and defaults to an address of an int whose value is default
  * `*y = 12` //updates the value = 12 at the address of y
* Slice Type
  * Assume for the following statements: `j := [...]string{"jan", "feb", "mar", "apr", "may", "jun"}` //declare an array
  * `js := j[1:3]` //js is declared as a slice where len(js) = 2 and js values are ["feb", "mar"] 
  * `var js []string` //js declared as a slice where len(js) = 0 and js is nil
  * `js := []string(nil)` //js declared as a slice where len(js) = 0 and js is nil
  * `js := []string{}` //js declared as a slice where len(js) = 0 and js points to the address of an unnamed array
  * `js := make([]string, 4)` //js declared as a slice where len(js) = 4 and js points to the address of an unnamed array
  * `js := make([]string, 4, 10)` //js declared as a slice where len(js) = 4, capacity = 10 and js points to the address of an unnamed array
  * `js := make([]string, 4)[:10]` //js declared as a slice where len(js) = 4, capacity = 10 and js points to the address of an unnamed array
* Map Type
  * `var k map[string]int` //k declared as a map with string keys and int values and k is nil
  * `k := make(map[string]int)` //k declared as a map with string keys and int values and k points to an empty map
  * `k := map[string]int{}` //k declared as a map with string keys and int values and k points to an empty map
  * `k := map[string]int{"sammy": 33, "james": 10}` //k declared as a map with string keys and int values and k points to a populated map 

####Basic 'Types'

* Integer 
  * natural - int and uint
  * Signed or unsigned - int8, ..., int64, uint8, ..., uint64
  * Rune - synonym for int32
  * byte - synonym for uint8
* Floating Point
  * float32
  * float64 - preferred
* Complex
  * complex64
  * complex128
* Booleans
* Strings
  * Super Important - for loop range on a string interates across runes and gives you the byte offest of each rune (f3.5) 
  * String literal ==> "double quote literal that can include escqpe characters"
  * Raw string literal ==> \`single quote raw string - no escape chars - good for regex\`
  * Unicode - varaible length strings - one character can occupy more than on byte
    * len("x") where x is a Korean character would be greater than one
    * utf8.RuneCountInString("x") would give proper length
  * String manipulation libraries
    * strings - search, replace, compare, trim, etc...
    * bytes - similar to strings for byte[] - has Buffer type for appending...
    * strconv - string conversions - to and from boolean, numbers, etc...
    * unicode - IsDigit, IsLetter, IsUpper, etc... ToUpper, etc...
* Constants
  * untyped until needed to - has higher precision
  * iota - constant generator used for series

####Collections or Composite Types
* arrays - fixed size and homo
* structs - fixed size and hetero
* slices - dynamic size and homo
* maps - dynamic size and hetero
