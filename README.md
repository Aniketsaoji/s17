# CSCI 3366 Programming Languages#

### Spring 2017###

---
**Meets:** MWF 2PM - 2:50PM; Fulton Hall 415

**Instructor:** [Robert Muller](http://www.cs.bc.edu/~muller/)

**Office:** St. Mary's South 277; Mondays 3PM - 4:30PM; Tuesdays 10AM - 11:30AM

**Teaching Assistant:**

+ Alden Frost: Fulton 160; Wednesday 11AM - 2PM.

---

##Schedule##

| Mtng |      | Date | Topic                                    | Notes / Code                             | Psets      |
| :--: | :--: | :--: | :--------------------------------------- | :--------------------------------------- | :--------- |
|  1   |  W   | 1/18 | Introduction and Overview                | 011817.md                                | 1 Out      |
|  2   |  F   | 1/20 | Background Material                      | [012017.md](./notes/012017.md)           |            |
|  3   |  M   | 1/23 | Introduction to OCaml                    | [012317.md](./notes/012317.md)           |            |
|  4   |  W   | 1/25 | OCaml; eval & format                     | [012517.md](./notes/012517.md)           |            |
|  5   |  F   | 1/27 | Context-Free Grammars; Parsing           | [012717.md](./notes/012717.md)           | 1 In/2 Out |
|  6   |  M   | 1/30 | Grammar Hacking; Parsing                 | [013017.md](./notes/013017.md)           |            |
|  7   |  W   | 2/1  | A Recursive Descent Parser               | [code](./code/020117/)                   |            |
|  8   |  F   | 2/3  | Mercury, Natural Semantics               |                                          |            |
|  9   |  M   | 2/6  |                                          |                                          |            |
|  10  |  W   | 2/8  |                                          |                                          |            |
|  11  |  F   | 2/10 | Venus: CBV, CBN, Type Systems            |                                          |            |
|  12  |  M   | 2/13 | Type Inference in Venus, Wand's Algorithm |                                          |            |
|  13  |  W   | 2/15 | Type Inference, Unification              |                                          |            |
|  14  |  F   | 2/17 | Earth: Variants, Records, Block-Structure |                                          |            |
|  15  |  M   | 2/20 | Earth: Semantics & Type System           |                                          |            |
|  16  |  W   | 2/22 | *OUT SICK*                               |                                          |            |
|  17  |  F   | 2/24 |                                          |                                          |            |
|  18  |  M   | 2/27 |                                          |                                          |            |
|  19  |  W   | 3/1  | **First Midterm**                        | [firstKey.pdf](./resources/firstKey.pdf) |            |
|  20  |  F   | 3/3  | Exam Return & Review                     |                                          |            |
|      |  M   | 3/6  | **SPRING BREAK**                         |                                          |            |
|      |  W   | 3/8  | **SPRING BREAK**                         |                                          |            |
|      |  F   | 3/10 | **SPRING BREAK**                         |                                          |            |
|  21  |  M   | 3/13 | Review of Type System for Earth (PS5) and Compiler for Mars (PS6) |                                          | 6/out      |
|  22  |  W   | 3/15 | *OUT SICK*, Practicum Covered by Jesse Mu |                                          |            |
|  23  |  F   | 3/17 | *OUT SICK*                               |                                          |            |
|  24  |  M   | 3/20 | Simply Typed LC (Church)                 |                                          |            |
|  25  |  W   | 3/22 | Simply Typed LC (Curry)                  |                                          |            |
|  26  |  F   | 3/24 | System F (Church)                        |                                          |            |
|  27  |  M   | 3/27 | Subtyping                                |                                          |            |
|  28  |  W   | 3/29 | Types in Java                            |                                          |            |
|  29  |  F   | 3/31 | PS6 Compiler Hacking Practicum           |                                          |            |
|  30  |  M   | 4/3  | Static Chains, Closures                  | [040317.md](./notes/040317.md)           |            |
|  31  |  W   | 4/5  | Mars/miniC Compiler Lab                  |                                          |            |
|  32  |  F   | 4/7  | **Second Midterm**                       | [secondKey.pdf](./resources/secondKey.pdf) |            |
|  33  |  M   | 4/10 |                                          |                                          |            |
|  34  |  W   | 4/12 |                                          |                                          |            |
|      |  F   | 4/14 | **NO MEETING**                           |                                          |            |
|      |  M   | 4/17 | **NO MEETING**                           |                                          |            |
|  35  |  W   | 4/19 | Nullability, Web Assembly Language       |                                          |            |
|  36  |  F   | 4/21 | LR(k) Parsing                            |                                          |            |
|  37  |  M   | 4/24 | Early's Algorithm                        | [042417.md](./notes/042417.md)           |            |
|  38  |  W   | 4/26 | Early's Algorithm                        |                                          |            |
|  39  |  F   | 4/28 |                                          |                                          | 6/In       |
|  40  |  M   | 5/1  |                                          |                                          |            |
|  41  |  W   | 5/3  | **Last Meeting**                         |                                          |            |



---



# Notes from D. Hoo on circumventing ocamlmerlin's attempt to lint the OCaml REPL pane

### In Atom, open the Settings tab; select Packages, then search for the Repl package; select View Code

Once you have the code for the package open:

1. Replace the contents of your ```Repls/replOcaml.js``` with the changes from [replOcaml.js](https://github.com/314eter/REPL-Nodejs/blob/master/Repls/replOcaml.js).

2. Then, replace the entirety of your ```lib/Repl-View/ReplView.coffee``` file from [ReplView.coffee](https://github.com/314eter/REPL-Nodejs/blob/master/lib/Repl-View/ReplView.coffee).

3. Close the window with the repl source code since you don't need it anymore.

### Next, go to Settings -> Packages -> language-ocaml -> view code

Once you have the code for the package open:

1. Create a new file called ```toplevel.cson```, and save it in the **grammars** folder in the language-ocaml package

2. Copy the code from [toplevel.cson](https://github.com/314eter/language-ocaml/blob/591e2a77dd8e88264cbeb3916cb89ad1919754cb/grammars/toplevel.cson), and paste it into your file and save.

3. Lastly, restart atom and launch repl and ocamlmerlin shouldn't lint repl anymore.

<!-- [Use OCaml Toplevel grammar Commit](https://github.com/314eter/REPL-Nodejs/commit/95f8e1a52bd554939a2fe006266e382256ce3aa3) -->
<!-- grammars/toplevel.cson 
From this PR
https://github.com/toroidal-code/language-ocaml/pull/24/commits/591e2a77dd8e88264cbeb3916cb89ad1919754cb -->

