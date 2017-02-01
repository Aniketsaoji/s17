# CSCI 3366 Programming Languages

### Spring 2017

**R. Muller**

------

### Righty

Compile and run:

```bash
> make
> ./righty
```

------

Righty is an odd little language of logical expressions. It's odd because the operators are right-associative. The operators are right associative so that it will be easy to write a recursive-descent parser.

```

                                expr   ::= term || expr | term
                                term   ::= factor && term | factor
                                factor ::= t | f | !expr | ( expr )

```

