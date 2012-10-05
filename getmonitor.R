getmonitor <- function(id, directory, summarize = FALSE)
{

id <- as.integer(id)
id <- sprintf("%03d", id)

dir <- sprintf("%s/%s.%s", directory, id, "csv")

res <- read.csv(dir)

if (summarize == TRUE) {

	print(summary(res))
	return(res)

}

else {

	return(res)

}

}