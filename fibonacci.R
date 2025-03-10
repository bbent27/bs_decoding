# atttempting to add fibonacci


#below function is working!
Fibonacci <- function(n) {
  if (n == 1){
    return(1)
  } else if (n == 2) {
    return(c(1,1))
  } else {
    # What is previous for Fibonacci(3)?
    # 1 1
    previous<-Fibonacci(n-1)
    # Current will be the sum of the *last two* values of previous
    current <- previous[n - 1] + previous[n - 2]
    # Return current concatenated (added to the end) onto previous
    return(c(previous,current))
  }
}



Fibonacci(20)
Fibonacci(30)
Fibonacci(5)
Fibonacci(20)
#^everything above this works

# The below won't work because Fibonacci() expects a length 1 input
# E.g. 6 is ok, 10 is ok, but 6:10 causes an error
# Fibonacci(c(6:10)) #(this wont work)

library(ggplot2)
# FROM MAX: later on, look up geom_path()
ggplot(Fibonacci, aes(x=n,y=Fibonacci(n))+
  geom_line()
ggplot(aes)+geom_image(image="seahorse.png")

library(numbers)
fibonacci

df <- data.frame(position = 1:length(fib_seq), value = fib_seq)
ggplot(df, aes(x = positon, y= value)) +
  geom_line()+
  labs(title = "Fibonacci Sequence", x = "Position", y = "Value")
rlang::last_trace()



#plotting a spiral graph
fibonacci_spiral <- function(n) {
  fib_seq <- fibonacci(n)
  theta <- seq(0, 2*pi, length.out = n)
  x <- fib_seq * cos(theta)
  y <- fib_seq * sin(theta)
  return(data.frame(x=x, y=y))
}

spiral_data <- fibonacci_spiral(10)
plot(spiral_data$x, spiral_data$y, type = "l", asp = 1)
