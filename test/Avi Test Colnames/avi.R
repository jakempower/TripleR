library(TripleR)
data("likingLong")
 
combine <- read.csv ("ListeningSRM.csv", header = TRUE)
combine$perceiver.id2 <- paste0(combine$group.id, ":", combine$perceiver.id)
combine$target.id2 <- paste0(combine$group.id, ":", combine$target.id)
 
RRL <- RR(Meta.F1/Meta.F2 + Target.F1/Target.F2 ~ perceiver.id2*target.id2 | group.id, data = combine)
RRL