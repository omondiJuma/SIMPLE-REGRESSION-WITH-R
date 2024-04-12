sleep_data<-data.frame(screen_t=c(8,3,1,7,7,8,9,7,10,12),
                       sleep=c(10.5,10.5,6,5,7,9,6,4,10,7))
sleep_data
summary(sleep_data)
sleep_data.lm<-lm(screen_t~sleep,data=sleep_data)
sleep_data.lm
summary(sleep_data.lm)

