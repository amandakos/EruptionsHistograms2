# First, call up my package and my data frame.

library(ggplot2)

faithful

# I like to view the data as I'm working, so call up the view.

View(faithful)

# Create a histogram using my data:

faithful_histogram <- ggplot(faithful, aes(x = eruptions))
faithful_histogram + geom_histogram()

# Pretty, but let's do some more work! Warning suggests adjusting binwidth.

# However, there is another way that gives even more control over the bin boundaries. 
# I will create a vector of bin boundaries (sometimes called breaks), 
# and pass this vector as the breaks argument to geom_histogram(). 
# In the following, I'll create bins with a width of 0.2:

faithful_histogram + geom_histogram(breaks = seq(1.4, 5.2, by = 0.2))

# Fun with histograms

waiting_histogram <- ggplot(faithful, aes(x = waiting))
waiting_histogram + geom_histogram(binwidth = 3)

waiting_histogram <- ggplot(faithful, aes(x = waiting))
waiting_histogram + geom_histogram()
