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

| Mtng |      | Date | Topic                          | Notes / Code                   | Psets      |
| :--: | :--: | :--: | :----------------------------- | :----------------------------- | :--------- |
|  1   |  W   | 1/18 | Introduction and Overview      | 011817.md                      | 1 Out      |
|  2   |  F   | 1/20 | Background Material            | [012017.md](./notes/012017.md) |            |
|  3   |  M   | 1/23 | Introduction to OCaml          | [012317.md](./notes/012317.md) |            |
|  4   |  W   | 1/25 | OCaml; eval & format           | [012517.md](./notes/012517.md)                      |            |
|  5   |  F   | 1/27 | Context-Free Grammars; Parsing | [012717.md](./notes/012717.md) | 1 In/2 Out |
|  6   |  M   | 1/30 | Grammar Hacking; Parsing       | [013017.md](./notes/013017.md) |            |
|  7   |  W   | 2/1  |                                |                                |            |
|  8   |  F   | 2/3  |                                |                                |            |
|  9   |  M   | 2/6  |                                |                                |            |
|  10  |  W   | 2/8  |                                |                                |            |
|  11  |  F   | 2/10 |                                |                                |            |



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

