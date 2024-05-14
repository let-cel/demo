library(tidyr)

Odyss_pattern <- Odyss_pos %>%
  mutate(title = 'Odyss', .before = 'book') %>%
  unite('id', c('book', 'line_nr'))

Iliad_pattern <- iliad_pos %>%
  mutate(title = 'Iliad', .before = 'book') %>%
  unite('id', c('book', 'line_nr'))

Argo_pattern <- argo_pos_lines %>% 
  rename(id = line)
  
all_pattern <- Odyss_pattern %>%
  bind_rows(Iliad_pattern) %>%
  bind_rows(Argo_pattern)
  

#считаем частотность паттернов по названиям

pattern_stat <- all_pattern  %>% 
  group_by(title) %>% 
  count(pos_line)

#преобразуем в широкий формат

pattern_wider <- pattern_stat %>% 
  pivot_wider(names_from = title, values_from = n,
              values_fill = 0)

#отбираем ненулевые значения
non_zero <- pattern_wider %>% 
  filter(Argo != 0, Iliad != 0, Odyss != 0)



#фильтрация по первым символам рядов:


filter(str_detect(line, "^1_"))
