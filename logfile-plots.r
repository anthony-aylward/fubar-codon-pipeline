logfile <- read.csv(commandArgs(TRUE), sep='\t', head=TRUE)

end = nrow(logfile)
start = floor(end/4)

pdf(paste('logfile-plots.pdf', sep=''), width=7, height=17.5)
par(mfrow=c(5,2))
for (n in setdiff(names(logfile),c('iter'))) {
    plot(logfile[['iter']][start:end], logfile[[n]][start:end], type='l',
         col='red', ann='FALSE')
    title(main=n, xlab='Iteration', ylab=n)
}
dev.off()
