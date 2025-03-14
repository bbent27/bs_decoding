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
library(rphylopic)
# FROM MAX: later on, look up geom_path()
ggplot(Fibonacci, aes(x=n,y=Fibonacci(n)))+
  geom_path()+
    geom_image(image="seahorse.png")

library(numbers)
fibonacci

n <- 5
Fibonacci(n)

# The output we want
fib5_df <- data.frame(x = c(0, -1, -2, 0, 3),
                      y = c(0, -1, 0,  2, -1))
ggplot(fib5_df, aes(x, y)) +
  geom_path()

n <- 9
f <- Fibonacci(n)
y <- x <- rep(0, n + 1)
direction <- matrix(c(-1, -1, 1, 1,
                      -1, 1, 1, -1),
                    ncol = 2)
for(i in 2:length(x)) {
  x[i] <- x[i - 1] + f[i - 1] * direction[(i - 2) %% 4 + 1, 1]
  y[i] <- y[i - 1] + f[i - 1] * direction[(i - 2) %% 4 + 1, 2]
}

fib_data <- data.frame(x, y)
uuid <- get_uuid(name="Haliotis")
img <- get_phylopic(uuid=uuid)
ggplot(fib_data, aes(x, y))+
  add_phylopic(img=img, height= 30, x=3.5, y=-7, angle = 90) +
  geom_path(color="red", linewidth = 1) +
  coord_fixed() +
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())

# x, y coordinates as follows:
# -,- 1, 5, 9
# -,+ 2, 6
# +,- 3, 7
# +,+ 4, 8

img <- pick_phylopic(name="Haliotis", n=1, view=1)

p<- ggplot()+
  coord_cartesian(xlim=c(0.6,1.4), ylim=c(0.6,1.4))+
  add_phylopic(img=img, x=1.25, y=1.25, height=.25)

