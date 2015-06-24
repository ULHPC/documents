# A section in Markdow level 1

## A subsection in Markdown level 2

### Frametitle on level 3

_Note_: These examples are translated from the example of Romain Vimont

* see the [`mdbeamer` repository on Github](https://github.com/rom1v/mdbeamer)

#### Block on level 4

* item 1 in a block
* item 2 in a block
    - sub item 1

### More on Blocks 

\blockbegin{A First Block}

inside the __block__ in *Markdown*

\blockend

Comments below the first block.

#### A second block

* inside the second block


### Why?

* the source code is more readable
    - sub item 1
	- sub item 2
	    * sub sub item 1
        * sub sub item 2
* The syntax _is_ more **convenient**
    - Strikeout: This ~~is deleted text.~~
    - Superscripts and subscripts:
	    * H~2~O is a liquid
		* 2^10^ is 1024.
* [Write me!](mailto:sebastien.varrette@uni.lu)

### Code block

Indented code blocks

    if (a > 3) {
      moveShip(5 * gravity, DOWN);
    }

Fenced code blocks

~~~java
public static void main(String... args) {
    System.out.println("Hello world!");
}
~~~

~~~{.c}
int main(int argc, char *argv[]) {
  printf("Hello world!\n");
  return 0;
}
~~~

### Lists

* item one
* item two

<!--  -->

* another list item 1
* another list item 2


### Enumerate list

1. clone the repository
2. install `pandoc`
3. Install the dependencies
    a. `texlive-latex-base`
    b. `latex-beamer`
4. Install a reader `Skim`

### Citations and appearance

This is from [*Mitch Resnick*](https://en.wikipedia.org/wiki/Mitchel_Resnick).

> If you learn to read, you can then read to learn.\
> If you learn to code, you can then code to learn.[^ted]

[^ted]: \tiny<http://www.ted.com/talks/mitch_resnick_let_s_teach_kids_to_code.html>

Now a step-by-step appearance:

> - first
> - then
> - finally

### More appearance

A first paragraph

. . .

Then another.

. . .

Now some formatting:

| There exists 2 types of persons:
|   those who understand recursivity and 
|   those who don't understand that there exists 2 types of persons:
|      those who understand recursivity and 
|      those who don't understand that there exists 2 types of persons:
|         ...



### \LaTeX /Beamer Special 

Some elements __do not__ exist in Pandoc Markdown.
In this case, you shall simply use \LaTeX.

\begin{alertblock}{Alert}
That's an alertblock
\end{alertblock}

\begin{exampleblock}{Example}
That's an exampleblock
\end{exampleblock}

### Maths \& Tables 

With some Formulaes:

$$
\frac{\pi}{4}=\int_0^1 \sqrt{1-x^2}\mathrm dx
$$

And now some table

| Test   | col2 | col3 |
|--------|------|------|
| item 1 |   14 |   28 |
| item 2 |    1 |    1 |
|        |      |      |

### Images

The classical markdown syntax `![](<path/to/image>)` does not allow any control on the size

So you probaby wish to do it in \LaTeX\ directly

\centerline{\includegraphics[width=4em]{logo_ULHPC.pdf}}

A normal (left aligned) text afterward

### Columns (with markdown inside)

To permit the usage of Markdown within a beamer columns environment,  you have to use the following commands:

~~~latex
\columnsbegin{<width>}
  ...
\column{<width>}
  ...
\columnsend
~~~

\columnsbegin{.5\textwidth}

Some text on the left column

* item 1
* item 2
    - sub item 1

\column{.5\textwidth}

Text on the right column

1. enum 1
2. enum 2
    a. sub enum 1

\columnsend

### Columns w. blocks w. Markdown inside

\columnsbegin{.5\textwidth}

\blockbegin{A Block in A Column}

* item 1
* item 2
    - sub item 1
* item 3
    - sub item 1
	- sub item 2

\blockend

\column{.5\textwidth}

Inside a column environment:

* the `block` environment raise an error
* instead, use the following commands: 

~~~latex
\blockbegin{Title}
  ...
\blockend
~~~

\columnsend

* This allows to use the Markdown syntax **in** the block.
    - only required with the `\columnsbegin ... \columnsend` construction 


### Links

\scriptsize

Links on description environment:

pandoc
  ~ <http://johnmacfarlane.net/pandoc/demo/example9/pandocs-markdown.html>

beamer
  ~ <http://johnmacfarlane.net/pandoc/demo/example9/producing-slide-shows-with-pandoc.html>

In french
  ~ <http://enacit1.epfl.ch/markdown-pandoc/>

See [UL HPC website].

[UL HPC website]: http://hpc.uni.lu


