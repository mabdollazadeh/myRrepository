con <- url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlC <- readLines(con)
length(htmlC)
close(con)
nchar(htmlC[10])
nchar(htmlC[20])
nchar(htmlC[30])
nchar(htmlC[100])
#45 31 7 25
