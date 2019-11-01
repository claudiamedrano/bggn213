Class 7 R functions and packages
================
Claudia Medrano
10/23/2019

``` r
source("http://tinyurl.com/rescale-R")
```

Let’s try our rescale() function from last class

``` r
rescale(1:10)
```

    ##  [1] 0.0000000 0.1111111 0.2222222 0.3333333 0.4444444 0.5555556 0.6666667
    ##  [8] 0.7777778 0.8888889 1.0000000

``` r
rescale(c(3,10,NA,7))
```

    ## [1] 0.0000000 1.0000000        NA 0.5714286

# Test fail

rescale( c(1,10,“string”) )

``` r
rescale(c(3,10,NA))
```

    ## [1]  0  1 NA

stop(“some message”) to report on unexpected input type or other problem
early in a function rescale2(c(3,10,NA,“Barry”)) would give an error

\#write a function both\_na() We want to write a function, called
both\_na(), that counts how many positions in two input vectors, x and
y, both have a missing value

``` r
# from stackOverflow
x <- c( 1, 2, NA, 3, NA)
y <- c(NA, 3, NA, 3, 4)

is.na(x)
```

    ## [1] FALSE FALSE  TRUE FALSE  TRUE

``` r
is.na(y)
```

    ## [1]  TRUE FALSE  TRUE FALSE FALSE

``` r
which(is.na(x))
```

    ## [1] 3 5

working snippet of code

``` r
is.na(x) & is.na(y)
```

    ## [1] FALSE FALSE  TRUE FALSE FALSE

``` r
both_na <- function(x,y) {
 sum(is.na(x) & is.na(y))
}
```

``` r
both_na(x,y)
```

    ## [1] 1

``` r
x <- c(NA, NA, NA)
y1 <- c( 1, NA, NA)
y2 <- c( 1, NA, NA, NA)
y3 <- c(1, NA, NA, NA, NA, NA, NA)

both_na(x,y3)
```

    ## Warning in is.na(x) & is.na(y): longer object length is not a multiple of
    ## shorter object length

    ## [1] 6

``` r
#error due to recycling
```

both\_na2 \<- function(x,y) { if(length(x) \!= length(y)) { stop(“vector
lengths are not the same”) } sum(is.na(x) & is.na(y)) }

both\_na2(x, y3)

Write a function grade() to determine an overall grade from a vector of
student homework assignment scores dropping the lowest single alignment
score. student 1 c(100, 100, 100, 100, 100, 100, 100, 90) student 2
c(100, NA, 90, 90, 90, 90, 97, 80)

``` r
s1 <- c(100, 100, 100, 100, 100, 100, 100, 90)
s2 <- c(100, NA, 90, 90, 90, 90, 97, 80)

#use which.min() from stack overflow
which.min(s2)
```

    ## [1] 8

``` r
#exclude it from average 
s1[which.min(s1)]
```

    ## [1] 90

``` r
#vector[-IND]
s1[-which.min(s1)]
```

    ## [1] 100 100 100 100 100 100 100

``` r
s2[-which.min(s2)]
```

    ## [1] 100  NA  90  90  90  90  97

``` r
mean(s1[-which.min(s1)])
```

    ## [1] 100

``` r
mean(s2[-which.min(s2)])
```

    ## [1] NA

``` r
mean(s2[-which.min(s2)], na.rm = TRUE)
```

    ## [1] 92.83333

``` r
#student with the following scores would average 100
s3 <- c(100, NA, NA, NA, NA)
```

``` r
x <- s3
sum(x[-which.min(x)], na.rm = TRUE) / (length(x) - 1)
```

    ## [1] 0
