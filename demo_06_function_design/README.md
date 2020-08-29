# Designing Functions

In this demo, we will study the process of designing functions. 
We will follow the 5-step process in our textbook *Practical Programming*, 
Chapter 3, called the **Function Design Recipe**. 
It is called a recipe because it guides you to follow a systematic approach to designing your function. 
Every time you write a function, you need to answer the following questions:

* What do you name the function? 
* What are the argumants, and what types of information do they represent?
* What calculations are you doing with that information?
* What does the function return?
* Does it work as expected?

You will address these questions by following the recipe shown next. 

## The Function Design Recipe

The five steps are as follows:

1. **Examples** Type a few example calls and determine what it should return for those values. 
The name of your function should indicate what is being calculated in your examples. 
1. **Description** Write a few sentences to describe what your function does. 1. **Header** Type some documentation relating to your function. 
It should be clear to the reader what arguments it takes as input and what value is returned and the types of each variable. 
1. **Body** By now, you should be clear about how your function will work. 
Now type the code to perform the calculations. 
1. **Test** Run the examples from step 1 to verify that your function works as expected. 


## Function Design Example


Consider the simple example of the function ```addTwoNumbers``` that, well, adds two numbers.

```R
# Define a function without documentation.
addTwoNumbers <- function(first_number, second_number) {

  total <- first_number + second_number

  return(total)
}
```

The function is fine but how does the user know how it works. 
Guessing is only reasonable if the function is simple. 

```R
addTwoNumbers(3,4)
```

That makes sense and it appears to work. 
If your user wants to know for sure, they can
search for documentation, as you would for any other function.

```R
?addTwoNumbers
```
There's nothing there yet.

You could print the entire function object but that
is not very convenient for long and complex functions.
```R
addTwoNumbers
```

Instead, add documentation to the function in a docstring.

```R
addTwoNumbers <- function(first_number, second_number) {

  #' Add Two Numbers
  #'
  #' \code{addTwoNumbers} adds two numbers together and returns the sum.
  #'
  #' @param first_number a number
  #' @param second_number another number
  #' @return a numeric sum of two numbers

  total <- first_number + second_number

  return(total)
}
```

Now test the documentation by calling for help:
```R
?addTwoNumbers
```
or
```R
help(addTwoNumbers)
```
and you should see the documentation appear in the "Help" window.





## Function Design Recipe

Now apply the function design recipe to the ```addTwoNumbers``` example.

### Examples

Try to think of some examples that will test the limit of your function. 

```R
addTwoNumbers(3,4) == 7
addTwoNumbers(0,4) == 4
addTwoNumbers(-3,3) == 0
```

Now you know that your function will have a form like this.

```R
addTwoNumbers <- function(first_number, second_number) {


  return(total)
}
```


### Header

Write a header to contain the docstring that will document your function. 

```R
addTwoNumbers <- function(first_number, second_number) {

  #' @param first_number a number
  #' @param second_number another number
  #' @return a numeric sum of two numbers



  return(total)
}
```

### Description


```R
addTwoNumbers <- function(first_number, second_number) {

  #' Add Two Numbers
  #'
  #' \code{addTwoNumbers} adds two numbers together and returns the sum.
  #'
  #' @param first_number a number
  #' @param second_number another number
  #' @return a numeric sum of two numbers



  return(total)
}
```

### Body

In this case, the body is simple but this is often the most work. 

```R
addTwoNumbers <- function(first_number, second_number) {

  #' Add Two Numbers
  #'
  #' \code{addTwoNumbers} adds two numbers together and returns the sum.
  #'
  #' @param first_number a number
  #' @param second_number another number
  #' @return a numeric sum of two numbers

  total <- first_number + second_number

  return(total)
}
```

It seems like a lot of work to do to prepare to write one line of code.
With more elaborate functions, having clearly stated the 
examples, header and description, 
you should be clear about what it is you will compute and the planning will pay off. 



### Test

Finally, test your functions to confirm accuracy. 

```R
addTwoNumbers(3,4)
[1] 7
addTwoNumbers(0,4)
[1] 4
addTwoNumbers(-3,3)
[1] 0
```
You can also test using logical values. 

```R
addTwoNumbers(3,4) == 7
[1] TRUE
addTwoNumbers(0,4) == 4
[1] TRUE
addTwoNumbers(-3,3) == 0
[1] TRUE
```

If all goes well, these examples should all return true.


## Tips

You will get better at writing functions as you gain more experience but the following tips can help you improve more quickly. 
* Start off with a simple case. 
  * Save the corner cases for after your base cases work. 
* Start off with a simple approach.
  * You can adjust the code for faster computation once it is working. 
* Type the comments first.
  * Describe to the first user (you!) how the calculations will be performed. 
  * Split the calculation into checkpoints where you can determine the format 
  of intermediate calculations.
  * Type in the code one block at a time. 
  * Assign values to the arguments (but hide them in comments, so as not to interfere) 
  and run blocks of code in the IDE to test one section at a time.
* If you find it is getting too complicated, consider breaking up the calculation 
into separate parts.  
  * Is there a natural checkpoint where you can test with examples? 
* Choose examples that provide good testing cases. 
  * Does your function work with negative values? 
  * Does it work with missing values? 
  * Does it work with the wrong data types? 
  * Are there any knife-edge cases when the procedure will change? 
  * Are there any obvious boundaries?
* After making any significant changes to a partially-working function, 
re-run all of your test cases to make sure 
  * Did you break any of the test cases that were working before?
  * Did you fix any that were not working? 
  * Keeping score is good motivation.
  * With regular testing, you can make changes with more confidence. 

