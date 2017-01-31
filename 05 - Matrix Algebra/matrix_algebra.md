<style>

/* slide titles */
.reveal h3 { 
  font-size: 80px;
  color: #000e2f;
}

</style>
Introduction to matrix algebra and its applications to statistics
========================================================
author: 
date: 
autosize: true
font-family: Helvetica 

Why learn matrix algebra for statistics?
========================================================

- Matrix algebra is the basis of most statistical computing programs.

- It can be used represent systems of equations and is incredibly useful if you have large data sets.

- Knowing basic matrix algebra will help you understand regression, least squares, and linear statistical models.  

What is a matrix?
========================================================
\[ A = \left[ \begin{array}{ccc}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \end{array} \right]\] 

Matrix notation and standards
========================================================
Subscript notation

Summation notation

$\sum\limits_{i=1}^{m}\sum\limits_{j=1}^{n}a_{ij}$

Dot notation<br>
If the context for the limits is clear, $a..$ can be used instead of subscript or summation notation. 

Vectors and scalars
========================================================
Column vectors are indicated with a lowercase letter (e.g. $c$) whereas row vectors are a lowercase letter with a prime superscript (e.g. $r'$) 
\[c= \left[ \begin{array}{c}
a \\ b \\ c\end{array} \right]\] 
\[r'= \left[ \begin{array}{ccc}
a & b & c\end{array} \right]\] 
Scalars are typically indicated with $\lambda$. 

Basic matrix terms
========================================================
<b>Order</b> is the number of rows and columns that a matrix has. It is written as $r \times c$ and is usually shown as a subscript (e.g. $A_{r \times c}$). 

A <b>square</b> matrix has equal numbers of rows and columns. 

<b>Trace</b> is the sum of all diagonal elements of a <i>square</i> matrix. For non-square matrices the trace is not defined. 

The transpose of a matrix
========================================================
A matrix can be transposed, which means the row vectors becomes column vectors and column vectors become row vectors. The tranpose of a matrix is indicated with a prime superscript. For example:
\[ A = \left[ \begin{array}{ccc}
0 & -2 & 1\\
3 & \frac{1}{3} & 2\\
1 & -1 & 0 \end{array} \right]\] 


\[ A' = \left[ \begin{array}{ccc}
0 & 3 & 1\\
-2 & \frac{1}{3} & -1\\
1& 2 & 0 \end{array} \right]\] 

Partitioning matrices
========================================================
Any matrix can be thought of as being composed of submatrices. 

\[A_{r\times c} = \left[ \begin{array}{cc}
K_{p\times q} & L_{p\times(c-q)}\\
M_{(r-p)\times q} & N_{(r-p)\times (c-q)}\end{array} \right]\]

Elementary matrix operations: Addition and subtraction
========================================================
The sum of two matrices is equal to the matrix of sums for every element-by-element sum.

\[A = \left[ \begin{array}{ccc} 3 & 8 & 0 \\ 2 & 5 & 4\end{array} \right]\]

\[B = \left[ \begin{array}{ccc} 1 & 0 & 0 \\ 0 & 6 & 3\end{array} \right]\]

\[A + B = \left[ \begin{array}{ccc}4 & 8 & 0\\ 2 & 11 & 7\end{array} \right] \]

Conversely, subtracting matrix $B$ from $A$ involves subtracting each element from matrix $B$ from its corresponding element in $A$. In order to be added or subtracted, matrices must be of the same order, in which case they are termed conformable for addition or conformable for subtraction. 

Elementary matrix operations: Scalar multiplication
========================================================
Multiplying a matrx $A$ by a scalar $\lambda$ results in a matrix with every element multiplied by $\lambda$. For example, if \[A = \left[ \begin{array}{ccc} 3 & 8 & 0 \\ 2 & 5 & 4\end{array} \right]\] and $\lambda = 2$, then $\lambda A$ is equal to
\[A = \left[ \begin{array}{ccc} 6 & 16 & 0 \\ 4 & 10 & 8\end{array} \right]\] 

Elementary matrix operations: Multiplication
========================================================
In order to multiply two vectors, they must be of the same order, which means they are conformable for multiplication. The result of multiplying two vectors is the inner product.

\[a'x = \left[ \begin{array}{ccc}2 & 0 & \frac{1}{2}\end{array} \right] \left[\begin{array}{c}3\\1\\2 \end{array} \right] = 2(3) + 0(1) + \frac{1}{2}(2)=7\]

The same operation can be performed when multiplying a matrix and a vector. The result is a vector of the inner products. 

\[a'x = \left[ \begin{array}{ccc}2 & 0 & \frac{1}{2}\\ 1 & 7 & 2\end{array} \right] \left[\begin{array}{c}3\\1\\2 \end{array} \right] = \left[\begin{array}{c}2(3) + 0(1) + \frac{1}{2}(2)\\1(3) + 7(1) + 2(2) \end{array} \right] = \left[\begin{array}{c}7\\14 \end{array} \right]\]

Elementary matrix operations: Multiplication
========================================================
In order to multiply two matrices together, the number of columns in $A$ must equal the number of rows in $B$. The resulting matrix $AB$ will have the number of rows of $A$ and the number of columns of $B$. 

The elements of the resulting matrix $AB$ are the inner products of multiplying the <i>i</i>th row of $A$ by the <i>j</i>th row of $B$. For example:

\[AB = \left[\begin{array}{ccc} 1 & 4 & 2 \\ 0 & 2 & \frac{1}{4}\end{array}\right] \left[ \begin{array}{cc} 6 & 2\\0&1\\3&2\end{array}\right] = \left[ \begin{array}{cc}12 & 10 \\ \frac{3}{4} & \frac{5}{2}\end{array} \right]\]
<center>
$1(6)+4(0)+2(3) = 12$ <br> $1(2) + 4(1)+2(2)= 10$ <br> $0(6)+2(0)+\frac{1}{4}(3) = \frac{3}{4}$ <br> $0(2)+2(1)+ \frac{1}{4}(2)= \frac{5}{2}$

Elementary matrix operations: Multiplication
========================================================
$A_{r\times c}B_{c \times s}=P_{r \times s}$

$AB$ exists if $B$ has $c$ rows. 

$BA$ exists if $A$ has $r$ columns.

$AB$ and $BA$ both exist if $B$ is $c \times r$, which means that $A^2$ only exists if $A$ is a square matrix. If $A^2$ exists, then so does ever $A^k$ if $k$ is a postiive integer. 

Elementary matrix operations: Division
========================================================
There is no such thing as division in matrix algebra. Instead, "division" is accomplished by multiplying $A$ by its inverse, $A^{-1}$. We'll come back to this in its own section. 

Special matrices: Null and identity matrices
========================================================
Every matrix has a corresponding null matrix of the same order with every element 0. The null matrix is the 0 of matrix algebra. 

Similarly, every matrix has a corresponding identity matrix $I$ of the same order. $I$ is a matrix where every diagonal element is equal to 1 and every off-diagonal element is 0. Multiplying any matrix $A$ by $I$ results in an identical $A$. The identity matrix is the 1 of matrix algebra. 

Special matrices: Summing and centering matrices
========================================================
The summing matrix is a matrix with every element 1 (unity). It is composed of summing vectors and is typically denoted $J$. 

The centering matrix $C = I - \bar{J_n} = I - \frac{1}{n}J_n$. We'll come back to this later when we get to applications of matrix algebra to statistics.

Special matrices: Symmetric matrices
========================================================
A matrix is symmetric if $A = A'$. $A$ must be square in order to be symmetric. 

\[A = \left[ \begin{array}{cccc} 1 & 0 & 3 & 4\\0 & 2&3&5\\3&3&14&8\\4&5&8&0 \end{array} \right] \]<br><br>
\[A' = \left[ \begin{array}{cccc} 1 & 0 & 3 & 4\\0 & 2&3&5\\3&3&14&8\\4&5&8&0 \end{array} \right] \]

Special matrices: Idempotent matrices
========================================================
If $A = A^k$ it is idempotent. All powers of $A$ are equal to $A$ if $k$ is a positive integer. 

Identity and null matrices are idempotent. 

Special matrices: Orthogonal matrices
========================================================
An orthogonal matrix is such that $AA' = I = A'A$ and must be square. A matrix is orthogonal if all of its rows and columns are orthonormal. 

The norm of a vector is $x = {\sqrt{x'x}} = {\left({} \sum\limits_{i=1}^nx_i^2\right)}^{\frac{1}{2}}$. 

If the norm is unity, then a vector is normal. Multiplying any vector by $\frac{1}{\sqrt{x'x}}$ normalizes it. 

Vectors $x$ and $y$ are orthogonal if $x'y = 0$ and conversely if $y'x=0$. 

In order to be orthonormal, they must be both normal and orthogonal, which is to say that $x'x = 1 = y'y$ and $x'y = 0$. 

Special matrices: Quadratic forms
========================================================
The quadratic form of any matrix $A$ is $x'Ax$, which when multiplied results in a quadratic form of $x$. 
<center>
$x'Ax = \sum\limits_{i=1}^n(x_i - \bar{x})^2$
</center>

Because the quadratic form represents the sum of squares, we'll come back to this when we talk about ANOVA.

Determinants
========================================================
Knowing how to find the determinant of a matrix is necessary for understanding inverse matrices and solving systems of equations. 

The determinant is a scalar sum of certain products of the elements of a square matrix multiplied by either $+1$ or $-1$ depending on rules for determining the sign. The rule is that if \[A = \left[ a_{ij}\right]\], then the sign for element $A_{ij} = (-1)^{i + j}$. So for element $a_{12}$, the sign is $(-1)^{1+2}=(-1)^3 = -1$. 

It is denoted as $|A|$.

Finding second-order determinants
========================================================
The determinant of matrices of order 2 is equal to the product of the diagonals minus the product of the off-diagonals. For example: 

\[|A| = \left|\begin{array}{cc}4 & 5\\ 1&8\end{array}\right| = (4)(5)-(1)(8) = 12\]

Finding third-order determinants
========================================================
For matrices of order 3, the determinant is found by crossing out the row and column of the first element, multiplying it by the appropriate sign, and multiplying the product of that by the determinant of its minor. This process is repeated for an entire row (or column); it does not matter which row or column as the determinant will be the same regardless. For example:
<br><br>
\[|A| = \left|\begin{array}{ccc} 1 & 0 & 3 \\ 2&1&6\\3&4&8 \end{array}\right| = 1\left|\begin{array}{cc}1 & 6 \\ 4&8 \end{array}\right| - 0\left|\begin{array}{cc}2 & 6 \\ 3&8 \end{array}\right| + 3\left|\begin{array}{cc}2 & 1 \\ 3&4 \end{array}\right| \]
\[=1(8-24) - 0(16-18) + 3(8-3) = -16 - 0 + 15 = -1\]

This process is called expansion by minors and can be expanded to <i>n</i>-order determinants. 

Basic properties of determinants
========================================================
Because expansion by rows is the corollary of expansion by columns, $|A| = |A'|$. 

If two rows of $A$ are identical, then $|A| = 0$. 

The signed minor is called a cofactor and is $c_{ij} = (-1)^{i+j}|A_{ij}|$. The sum of the elements of a row with their own cofactors is equal to the determinant. 

The sum of the products of elements of a row with the cofactors of any other row is zero. 

If $A$ and $B$ are square and of the same order, then $|A||B|=|AB|$. 

When $\lambda$ is a factor of any row or column of $|A|$, then it is also a factor of $|A|$ such that $|A| = \lambda|A|$

The sum or difference of two determinants does not equal the determinant of the sum or difference of the corresponding matrices. $|A|-|B| \neq |A-B|$

Because determinants are scalars, they can be compared for matrices of different orders. 

Inverse matrices
========================================================
The inverse of a matrix $A$ is equal to $A^{-1}$ where $A^{-1}$ is such that $AA^{-1} = I$.

The inverse matrix $A^{-1}$ may not be unique to $A$.

It can only exist if $A$ is square and nonsingular (nonzero).

Derivation of the inverse
========================================================
1. Take matrix $A$ and create a new matrix $W$ composed of the cofactors of the elements of $A$. The new matrix $W$ is called the <i>adjugate</i> of $A$. 

2. Transpose $W$ so that it becomes $W'$.

3. Multiply $W'$ by $\frac{1}{|A|}$

When the $\frac{1}{|A|}W'$ is multiplied by $A$, the result is $I$, which means that $\frac{1}{|A|}W' = A

Applications of the inverse to solving linear equations
========================================================
Any set of linear equations with a unique solution can be solved with $x = A^{-1}b$ if put into the form $Ax = b$. 

For example, 

Rank
========================================================
$x = A^{-1}b$ depends on the existence of $A^{-1}$ which in turn depends on $|A|$ being nonzero. The actual value of $|A|$ does not matter for the purposes of using the inverse to solve systems of linear equations, so computational shortcuts can eliminate unnecessary calculation. 

The <i>rank</i> of a matrix is the number of linearly independent rows (or columns) and is denoted as $r_A$. It is a positive integer that does not specify which rows (or columns) are LIN and only indicates the number that are.

Linear dependence and linear independence (LIN)
========================================================
Linearly dependent vectors can be written in terms of other vectors in the set, which means that $|A|$ is always 0. 

Linearly independent (LIN) sets of vectors are those in which the only way in which $a_1x_1 + a_2x_2 + \ldots + a_kx_k = 0$ is when $a=0$. 

Rank and the existence inverse matrices
========================================================

\begin{table}[H]\centering\caption{Equivalent statements for existence of $A^{-1}$}
\begin{tabular} {l l}\hline\hline
Inverse existing & Inverse not existing\\\hline
$A^{-1}$ exists & $A^{-1}$ does not exist\\
$A$ is nonsingular & $A$ is singular\\
$|A| \neq 0$ & $|A|=0$\\
$A$ has full rank & $A$ has less than full rank\\
$r_A = n$ & $r_A < n$\\
A has $n$ LIN rows & A has $<n$ LIN rows\\
A has $n$ LIN columns & A has $<n$ LIN columns\\ 
$Ax=0$ is only $x=0$ & $Ax = 0$ has many $x \neq 0$\\
\hline\end{tabular} \end{table}

Rank and elementary operators
========================================================
Because the LIN rows (or columns) of $A$ might not be the first rows (or columns) of $A$, a permutation matrix $E_{ij}$ can be used to interchange rows. 

Multiplying a matrix $A$ by any elementary operator (e.g. $E_{ij}$) does not change its rank. 

The rank of a matrix is equal to the number of non-null rows when a matrix is in row-echelon form. Row operations can be used to transform a matrix so that every element below the diagonal is 0, in which case it is in row-echelon form. 

Reduction to the equivalent canonical form
========================================================
For every non-null matrix $A_{m \times n}$, two products of elementary operators exist $P_m$ and $Q_n$ that can make $C$ the same order as $A$ when using null matrices. 

\[PAQ = \left[ \begin{array}{cc}I_r & 0 \\ 0 & 0 \end{array}\right] =C\]

For a symmetric matrix, reducing all elements below the diagonal to 0 will result in a diagonal matrix, so the congruent canonical form is:

\[PAQ = \left[ \begin{array}{cc}D_r & 0 \\ 0 & 0 \end{array}\right] =D\]

Generalized inverses
========================================================
The Penrose conditions state that for any matrix $A$ there exists a unique inverse $M$ such that 1) $AMA = A$ 2) $MAM = M$, 3) $AM$ is symmetric and 4) $MA$ is symmetric. 

There are also any number of matrices $G$ that satisfy the first Penrose condition that $AGA = A$. These are the generalized inverses which we previously called $A^{-1}$. 

Solving linear equations
========================================================
Systems of linear equations can have more than one solution. They can also have nonsense solutions (e.g. $0 = -7$), in which case they are inconsistent and cannot be solved. To check if a system of linear equations is consistent, augment $A$ with some column vector $y$; if the rank of the augmented matrix $A$ is the same as $A$ then the equations of $Ax = y$ are consistent and can be solved. 

If $A$ has full column rank, then $Ax = y$ has one unique solution. For all other matrices there are infinitely many solutions. 

Solving linear equations with generalized inverses
========================================================
For a consistent $Ax = y$, the infinitely many solutions can be represented in a column vector as $x = Gy$. 

For inconsistent $Ax = y$ (most data sets), an approximate solution can be found using least squares to minimize the  distance between $y$ and $Ax$ when an exact solution is not possible. In this context, it is $A'A \tilde{x} = A'y$ but in statistics it is generally written as $X'X \hat{b} = X/y$. 

Eigenvalues: Example of age distribution in a population
========================================================

Deriving eigenvalues
========================================================

Elementary properties of eigenvalues
========================================================

Calculating eigenvectors
========================================================

Finding the dominant eigenvalue
========================================================

Finding the second dominant root
========================================================

Applications: Covariance matrices
========================================================

Applications: Correlation matrices
========================================================

Applications: Sums of squares
========================================================

Applications: Linear regression
========================================================

Applications: Least squares estimates
========================================================
