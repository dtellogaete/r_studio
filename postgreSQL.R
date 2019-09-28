library(RPostgreSQL)
library(DBI)
install.packages("DBI")
install.packages("odbc")
install.packages("RPostgres")




library(DBI)
# Connect to a specific postgres database i.e. Heroku
con <- dbConnect(RPostgres::Postgres(),dbname = 'defaultdb', 
                 host = 'db-postgresql-nyc1-49189-do-user-6504988-0.db.ondigitalocean.com',
                 port = 25060, # or any other port specified by your DBA
                 user = 'doadmin',
                 password = 'uloudpjwigbbnx12')

dbListTables(con)

res <- dbSendQuery(con, "SELECT product FROM document")
document = c(dbFetch(res))
dbClearResult(res)

document

resquantity <- dbSendQuery(con, "SELECT subtotal FROM document")
quantity = c(dbFetch(resquantity))
dbClearResult(resquantity)

quantity

table(document, quantity)

plot(table(document, quantity))

grafico= array(quantity)


barplot(colMeans(grafico),
        main="Cantidad ",
        ylab="Unidades",
        names=document,
        col=rainbow(20, alpha = .6), 
                                    # la pregunta era de 1 a 7.
        xpd=F)                                   # Es necesario para que las barras no comiencen en el valor 0

