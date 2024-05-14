url <- "https://figshare.com/ndownloader/files/11296247"
download.file(url, "файл нейм", mode = "wb")
diorisis_list <- unzip("Diorisis.zip", files = NULL, list = TRUE)


grep = распознает последовательность символов

Homer_list <- grep("(0012)", diorisis_list$Name, ignore.case = TRUE, value = TRUE)

\\d* = буква d воспринимается как любой цифровой символ
      * = любая последоватеоьность чисел

.- = удаляется любой знак перед дефисом 

doc <- xmlTreeParse(url, useInternalNodes = TRUE, isURL = F)
rootnode <- xmlRoot(doc)
text <- xpathSApply(rootnode, "//TEI.2/text/body/sentence/word/lemma/POS")

url = paste("./", i, sep = "")

doc <- xmlTreeParse(url, useInternalNodes = TRUE, isURL = F)
rootnode <- xmlRoot(doc)

> for (i in filenames) {
  + url = paste("./", i, sep = "")
  + doc <- xmlTreeParse(url, useInternalNodes = TRUE, isURL = F)
  + rootnode <- xmlRoot(doc)
  + text <- xpathSApply(rootnode, "//TEI.2/text/body/sentence/word/lemma", xmlGetAttr, "POS")
  + text <- as.character(text)
  + y <- gsub(".xml", "", i)
  + outname <- paste(y, ".txt", sep = "")
  + write.table(text, outname, row.names = FALSE, col.names = FALSE, quote = FALSE)
  + }


freq_patt <- freq_patt %>%
  group_by(pos_line)
  mutate(n = row_number())



> for (i in filenames) {
url = paste("./", i, sep = "")
doc <- xmlTreeParse(url, useInternalNodes = TRUE, isURL = F)
rootnode <- xmlRoot(doc)
text <- xpathSApply(rootnode, "//TEI.2/text/body/sentence/word/lemma", xmlGetAttr, "POS")
text <- as.character(text)
y <- gsub(".xml", "", i)
outname <- paste(y, ".txt", sep = "")
write.table(text, outname, row.names = FALSE, col.names = FALSE, quote = FALSE)
}


> for (i in filenames) {
url = paste("./", i, sep = "")
doc <- xmlTreeParse(url, useInternalNodes = TRUE, isURL = F)
rootnode <- xmlRoot(doc)
text <- xpathSApply(rootnode, "//TEI.2/text/body/sentence/word/lemma", xmlGetAttr, "POS")
text <- as.character(text)
y <- gsub(".xml", "", i)
outname <- paste(y, ".txt", sep = "\n")
write.table(text, outname, row.names = FALSE, col.names = FALSE, quote = FALSE)
}


> for (i in f
url = paste("./", i, sep = "")
doc <- xmlTreeParse(url, useInternalNodes = TRUE, isURL = F)
rootnode <- xmlRoot(doc)
text <- xpathSApply(rootnode, "//TEI.2/text/body/sentence/word/lemma", xmlGetAttr, "POS")
text <- as.character(text)
write.table(text, outname, row.names = TRUE, col.names = FALSE, quote = FALSE)
}

> for (i in filenames) {
  +     url = paste("./", i,ep = "")
  +     doc <- xmlTreeParse(url, useInternalNodes = TRUE, isURL = F)
  +     rootnode <- xmlRoot(doc)
  +     text2 <- xpathSApply(rootnode, "//TEI.2/text/body/sentence/word/lemma", xmlGetAttr, "POS")
  +     text2 <- as.character(text)
  +     y <- gsub(".xml", "", i)
  +     outname <- paste(y, ".txt", sep = "")
  +     write.table(text, outname, row.names = FALSE, col.names = TRUE, quote = FALSE)
}













#crtl + enter = отправить код из редактора в консоль




#xmlElementsByTagName - достает все дочерние элементы
#$ - позволяет извлекать элементы по имени:
     x<- list(a=3, b=2, c=1)
     x$b
     2
#mutate () — добавляет новые переменные во фрейм данных, сохраняя существующие переменные
     
     for (i in range(length(RRR))) {
           y[RRR[i]] = HHH[i]
           
new_match            
select()
 


library(XML)
library(dplyr)
library(purrr)
library(udpipe)
library(tidyr)
library(stringr)
library(ggplot2)








> pers1 <- pers_tokens %>%
     filter(book == 1) %>%
  select(-book)
> dior1 <- dior_tokens %>%
      filter(book == 1) %>%
      select(-pos, book)
> TEST5 <- PERS5[1:11771,] %>%
      bind_cols(DIOR5[1:11771,])



Iliad_pattern <- Iliad_pattern %>%
  filter(str_detect(line, "^2_")) %>% 
  mutate(row = row_number())

Iliad_pattern <- Iliad_pattern %>%
  filter(row > 493)

Iliad_pattern$row = NULL

renameDataset(catalog_of_ships, Iliad_pattern)



catalog_of_heroes <- argo_pos_lines %>%
  filter(str_detect(line, "^1_")) %>% 
  mutate(row = row_number())

catalog_of_heroes <- catalog_of_heroes %>%
  group_by(line) %>% 
  mutate(n = row_number())

argo_pos_lines <- argo_pos_lines %>% 
  mutate(n = row_number())
  
argo_patt <- argo_pos_lines %>%
  filter(str_detect(line, "^1_"))


#Если не работает row_number()

#data_frame_name$row_num <-  seq.int(nrow(data_frame_name))
