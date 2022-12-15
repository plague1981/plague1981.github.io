library(httr)
library(stringr)
library(rvest)


getIF<-function(URL,m,n){
  http_url<-URL
  sheet<-GET(http_url)
  text_data<-content(sheet, 'text', encoding = "UTF-8")
  IF <-read_html(text_data) %>% html_nodes("div") %>% html_text()
  if (IF[m]=='NA'||IF[m]==''){
    IF<-stringr::str_split(IF[n],'\n',simplify = TRUE)[1]
  } else
    IF<-stringr::str_split(IF[m],'\n',simplify = TRUE)[1]
  return(IF)
} 
 
