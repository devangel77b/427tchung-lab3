library(ggplot2)
library(dplyr)

raw <- read.csv('force.csv',header=TRUE)
data <- tibble(raw)

fig1 <- ggplot(data,aes(x=x_m,y=F_N))+
     geom_hline(yintercept=0,color="gray70")+
     geom_point()+
     stat_summary(fun=mean,geom="line",color="blue")+
     xlab('$x$, \\unit{\\meter}')+
     ylab('$F$, \\unit{\\newton}')+
     theme_bw(base_size=8)
ggsave('fig1.svg',plot=fig1,width=3.4167,height=2,units="in")
     