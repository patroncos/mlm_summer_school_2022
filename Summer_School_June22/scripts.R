library(broom.mixed)
m1<- tidy(fit2, effects = "fixed",
          conf.int=TRUE, 
          exponentiate=FALSE)


(m1_plot <- 
    ggplot(m1, 
           mapping = aes(x= estimate,
                         y = term, 
                         xmin = conf.low, 
                         xmax = conf.high)) +
    geom_vline(xintercept = 0, color = "tomato", size =1) +
    geom_pointrange() +
    theme_classic())