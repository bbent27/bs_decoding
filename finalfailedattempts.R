#bits and bobs

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
plot(spiral_data$x, spiral_data, type = "l", asp = 1)
