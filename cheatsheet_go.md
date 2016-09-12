####Program structure

declaration (:=) vs assignment (=)

Pointer Example:

* `x := 1 //assign value`
* `p = &x //p points to the address of x, p is of type *int`
* `fmt.Println(*p) //"1"`
* `*p = 2 //value at p = 2, equivalent to x = 2`
* `fmt.Println(*p) //"2"`

Pointer vocabulary

* $ = "Address of"
* * = "value at"

zero value of a pointer is nil - nil is comparable

vim-go questions:

1. know type of a given variable
2. find all references of a variable (find all pointers)

'new' keyword - rarely used  
`p := new(int)   //p of type *int where *p (value at) is default "0"`
`                //prevents creating dummy variable just to get the address`

Assignment:

* `x = 1  //direct`
* `*P = 2 //indirect`

Tuple Assignment:

* `a, b, c = 1, 2, 3`
* `x, y = y, x`


####Collections or Composite Types
* arrays - fixed size and homo
* structs - fixed size and hetero
* slices - dynamic size and homo
* maps - dynamic size and hetero
