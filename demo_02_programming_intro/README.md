# Introduction to Programming

Computer programming languages are, literally, languages. 
It is not a metaphor.
In Google, a language is defined as "the method of human communication, either spoken or written, consisting of the use of words in a structured and conventional way."
A computer programming language is a written method of communication for the communication of instructions to a computer. 
Like other languages, programming languages have parts of speech, syntax and punctuation. 


## Nouns

Variables, objects. 


Data types. 

Examples of classes of data in ```R``` are as follows: 

<img src="Rvariablesdata.jpg" width="500"/>

A variable can have a single element (i.e. atomic) or be a vector or array of values. 
Typically, vectors and arrays comprise elements of the same data type. 
Statistical programming languages like ```R``` and ```Python``` also allow collection of data in data frames, in which each column can be of a separate data type. 


In the languages we will use, values are represented in binary digits, or "bits".
The storage of a 32-bit real number is as follows:

<img src="Binary32bitFloat.jpg" width="500"/>

For each individual variable or element of an array of data, the values are actually stored in a sequence of, for example, 32 adjacent locations in memory. 

Characters are stored similarly, with, for example, 8 bits to generate the decimal numbers 0 to 127, which correspond to the characters in the following ASCII table:

<img src="ASCII-Table.png" width="500"/>


Now we have many objects to work with. 
Now what can we do with them?


## Verbs

The action words of programming are sorted into several categories. 


### Operators 

There are several kinds of operators that each perform a different function. 


### Assignment operator

Before we can perform any operations, a variable has to be initialized with an assignment operator. 
An assignment operator assigns a value to a variable with a particular name. 


In ```R```, the assignment operator is ```<-```

```R
x <- 7
first_name <- "Linus"
```

In ```Python```, the assignment operator is ```=```

```python
y = 5
last_name = "Torvalds"
```

When reading the assignments aloud, you would say "y is assigned 5" but not "y equals 5"
because that would be confusing the assignment with one of the relational operators discussed next. 



### Relational operators

These operators are used to determine whether conditions hold.
They output what are called binary, logical, or Boolean, variables.
They are commonly used for flow control, such as for ```if``` statements, discussed below.
The precise syntax differs by programing language but the most common are shown in the following table.

<img src="RelationalOpsTrimmed.jpg" width="500"/>


### Logical Operators

The logical variables from two relational operators can be combined into another logical variable using logical operators. 
In ```R```, there are the following possibilities, illustrated by Venn diagrams with the sets in which the logical variable ```x``` and ```y``` are ```TRUE```.

<img src="LogicalOpsVenn.png" width="500"/>

The ampersand "&" represnts *and*, while the vertical bar, or pipe, "|" represents *or*.
In ```python```, the words ```and``` and ```or``` can also be used, with the word ```not``` taking the place of the negation operator ```!```


### Arithmetic operators

These are the operators that are most familiar to you. 
These operators work much like they do with pencil and paper, following the order of operations. 

In ```R``` these operators are used

<img src="ArithmeticOperatorsR.png" width="500"/>

In ```python``` these are the equivalent operators

<img src="ArithmeticOperatorsPython.jpg" width="500"/>



### Functions

A function is an object that returns another object or performs some procedure using inputs called *arguments*. 

Some examples of the syntax in ```R``` are as follows

```R
add_numbers <- function(num_1, num_2) {
    sum <- num_1 + num_2
    return(sum)
}

greeting <- function(name) {
    print(sprintf("Hello, %s!", name))
}


addnumbers(num_1 = 2, num_2 = 4)
[1] 6

gretting(name = "Linus")
[1] "Hello, Linus!"

```

In ```Python``` the syntax is different but the idea is the same. 

```python
def add_numbers(num_1, num_2):
    sum = num_1 + num_2
    return sum

def greeting(name):
    print(sprintf("Hello, %s!", name))



addnumbers(num_1 = 2, num_2 = 4)
> 6

gretting(name = "Linus")
> "Hello, Linus!"

```
Building your own functions is a large part of programming. 
We will study this in greater detail throughout this course. 


### Methods

In a programming paradigm called object-oriented programming, 
there is a special kind of function designed to work with a particular data type called an object. 
Some built-in methods work with one of the above data types, such as strings or characters. 
An object can also be a mix of several data types. 
Typically, an object is designed with a particular application in mind. 

In Python, here are many methods designed for type string, for example:

```python
my_string = "ThIs_Is_A_sTrInG"
print(my_string.tolower())
> "this_is_a_string"
```



## Prepositions, Conjunctions and Adverbs 

Conditional logic is what permits the great flexibility of programming languages for designing algorithms. 
It detrmines under what conditions an operation is to be performed. 


### ```if``` statements

<img src="if_statement_flow_diagram_C.jpg" width="500"/>


```R
if (condition) {
    # Execute statements when condition is TRUE.
    # ...
}

# Continue with remaining statements in any case.
```


### ```if```...```else``` statements

<img src="If_else_flow_diagram_C.jpg" width="500"/>

```R
if (condition) {
    # Execute statements when condition is TRUE.
    # ...
} else {
    # Execute statements when condition is FALSE.
}
```


### ```for``` loops

<img src="for_loop_C.jpg" width="500"/>


```R
for (object in list_of_iterators) {
    # Execute statements for each object in the list of iterators.
    # ...
}
```


### ```while``` loops

<img src="while_loop_C.jpg" width="500"/>

```R

while (condition) {
    # Execute statements when condition is TRUE.
    # ...
    # condition may change during an iteration.
    # ...
    # At end of block, evaluate condition and determine whether
    # to execute the code block again. 
}
```


