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


In the languages we will use, Values are represented in binary digits, or "bits".
The storage of a 32-bit real number is as follows:

<img src="Binary32bitFloat.jpg" width="500"/>

For each individual variable or element of an array of data, the values are actually stored in a sequence of, for example, 32 adjacent locations in memory. 

Characters are stored similarly, with, for example, 8 bits to generate the decimal numbers 0 to 127, which correspond to the characters in the follofing ASCII table:

<img src="RASCII-Table.png" width="500"/>


This gives us many objects to work with. 
Now what can we do with them?


## Verbs




### Operators 

### Assignment operator

Before we can perform any operations, a variables has to be initialized with an assignment operator. 


### Arithmetic operators


### Relational operators


### Functions



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


