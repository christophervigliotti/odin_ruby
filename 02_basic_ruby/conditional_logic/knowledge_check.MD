# Knowledge Check

This section contains questions for you to check your understanding of this lesson. If you’re having trouble answering the questions below on your own, review the material above to find the answer.

1. What is a Boolean?
it's a datatype that is either true or false

what is 'boolean logic' it's a tool used to determine if an expression resolves TRUE or FALSE

2. What are “truthy” values?
dunno

the only false values in Ruby are nil and false.  Everything else (including "false" as a string) is true.  

3. Are the following considered true or false: 
```
wat     my response
---     -----------
nil     false
0       true
"0"     true
""      true
1       true
[]      true
{}      true
-1?     true
```
see knowledge_check.rb

4. When do you use elsif?
as a second condition in an if statement where you want to do an evaluation

5. When do you use unless?
when you want to do something UNLESS the condition resolves

6. What do || and && and ! do?
OR, AND and NOT comparison operators

7. What is short circuit evaluation?
WAT

second argument will not be executed/evaluated unless the first resolves true

    if(true and true) << continues to evaluate the second expression because the first expression resolves to TRUE

    if(false and true) << stops after evaluating the first expression

8. What is returned by puts("woah") || true?
an error?

I was right

9. What is the ternary operator?
puts (knows_what_it_is)?"I know":"I don't know"

10. When should you use a case statement?
when you have multiple elsif conditions