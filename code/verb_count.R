
#В датафреймах с началом каждой новой песни счет строк обнуляется. 
#Поэтому добавляем в датафреймы новый столбец row_num, который показывает номер 
#каждой строки вне зависимости от песни

  argo_pos_lines$row_num <-  seq.int(nrow(argo_pos_lines)) 
 
#Затем отбираем строки, где присутствует verb:
 
 argo_verb <- argo_pos_lines %>% 
   filter(str_detect(pos_line, " verb "))
 
#сохраняем получившийся файл в формате csv
 
 write.csv(argo_verb, file = 'argo_verb.csv')