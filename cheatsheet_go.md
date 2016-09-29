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

####How to Create new References

* Integer
  * var a int //a=0 default value
  * a := 0
* Float
  * var b float64 //b=0.0 default value
  * b := 3.3
* Boolean
  * var c bool //c=false default value
  * c := true
* String
  * var d string //d="" default value
  * d := "chucksteak" //literal
  * d := \`steak\` //raw literal
* Array
  * var e [10]string //filled with default strings
  * e := [...]int{1,2,3} //e[0]=1, etc...
  * e := [...]string{0:"zero", 1:"one"}
* Struct
  * create type 
    * type f struct {field1, field2 string}
  * create variable
    * var example f //f defaults to a struct whose field are default
    * example := f{"ex1", "ex2"}

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
