## 1. INSTALAÇÃO/EXECUÇÃO DE PACOTES EM R ----

# 1.1 - INSTALAR PACOTE

#Via CRAN (Comprehensive R Archive Network): 
install.packages("nome-do-pacote").
#Via Github: 
devtools::install_github("nome-do-repo/nome-do-pacote").
#Via arquivo .zip/.tar.gz: 
install.packages("C:/caminho/nome-do-pacote.zip", repos = NULL).

# 1.2 - CARREGAR PACOTES

# CARREGANDO APENAS UM PACOTE
library(nome do pacote)

# CARREGANDO MULTIPLOS PACOTES DE UMA S? VEZ
x <- c('readxl', 'stringr','dplyr','ggplot2')
# install.packages(x) # caso nao tenham todos os pacotes, instala multiplos pacotes
lapply(x, library, character.only = TRUE) # CARREGANDO TODOS OS PACOTES DE UMA VEZ


## 2. OPERADORES NUM?RICOS EM R ----

1 + 1    # adição
## [1] 2
4 - 2    # subtração
## [1] 2
2 * 3    # multiplicação
## [1] 6
5 / 3    # divisão
## [1] 1.666667
4 ^ 2    # poténcia
## [1] 16
5 %% 3   # resto da divisão de 5 por 3
## [1] 2
5 %/% 3  # parte inteira da divisão de 5 por 3
## [1] 1


## 3. TIPOS DE OBJETO ----

x <- 1 # EM R, PODE-SE ARMAZENAR VALORES DENTRO DE UM OBJETO
x
## [1] 1

# 3.1 - OS OBJETOS PODEM ESTAR NAS SEGUINTES CLASSES:
#character
#numeric
#integer
#complex
#logica

# POR EXEMPLO:
# character
"a"
## [1] "a"
"1"
## [1] "1"
"positivo"
## [1] "positivo"
"Error: objeto x não encontrado"
## [1] "Error: objeto x n?o encontrado"

# numeric
1
## [1] 1
0.10
## [1] 0.1
0.95
## [1] 0.95
pi
## [1] 3.141593

# integer
1L
## [1] 1
5L
## [1] 5
10L
## [1] 10

# complex (raramente utilizado para análise de dados)
2 + 5i
## [1] 2+5i

# logical
TRUE
## [1] TRUE
FALSE
## [1] FALSE

# OBS.: PARA SABER A CLASSE DO OBJETO SELECIONADO, USE O COMANDO class()
x <- 1
class(x)
## [1] "numeric"

# 3.2 - VETORES
# VETORES PODEM ARMAZENAR SEQU?NCIAS DE VALORES, PODENDO AINDA POSSUIR CLASSES

v1 <- c(1,2,3,4)
v1
## [1] 1 2 3 4

class(v1)
## [1] "numeric"

# PODEM AINDA SER FEITAS OPERA??ES MATEM?TICAS

v1*2
## [1] 2 4 6 8

# VETORES PODEM CONTER MULTIPLAS CLASSES

y <- c(1.7, "a")  ## character

# NO CASO DE MULTIPLAS CLASSES EM UM MESMO VETOR, ELE TRANSFORMAR? O VETOR NA CLASSE DOMINANTE

#character > complex > numeric > integer > logical

# 3.3 - MATRIZES
# S?O VETORES DE 2 DIMENS?ES QUE ACEITAM APENAS ELEMENTOS DE UMA CLASSE

m <- matrix(1:6, nrow = 2, ncol = 3)
m

m[3,  ]   # seleciona a terceira linha
m[ , 2]   # seleciona a segunda coluna
m[1, 2]   # seleciona o primeiro elemento da segunda coluna
t(m)      # matriz transposta
m %*% n   # multiplica??o matricial
solve(m)  # matriz inversa de m

# 3.4 - LISTAS

x <- list(1:5, "Z", TRUE, c("a", "b"))
x

# 3.5 - DATA.FRAME
# S?O TABELAS COM DADOS A SEREM TRABALHADOS, CONTENDO ELEMENTOS DE MULTIPLAS CLASSES

# 4 - IMPORTANDANDO DADOS ----

library(readxl)

tb1 <- read.csv('tab1.csv',sep=';',dec = ',')
tb2 <- read.csv('tab2.csv',sep=';',dec = ',')


#COMANDOS SUPER ?TEIS

head(tb1) # Mostra as primeiras 6 linhas.
tail(tb1) # Mostra as ?ltimas 6 linhas.
nrow(tb1) # Número de linhas
ncol(tb1) # Número de colunas
dim(tb1) # Número de linhas e de colunas.
names(tb1) # Os nomes das colunas (variáveis).
str(tb1) # Estrutura do data.frame. Mostra, entre outras coisas, as classes de cada coluna.


# 5 - TRABALHANDO EM UM BANCO DE DADOS ----

# 5.1 - FILTRANDO DADOS POR UMA VARI?VEL
tb2 <- tb2[tb2$NOME!=' ',]
# 5.2 - EXECUTANDO OPERAÇÕES MATEMÁTICAS
# DESCOBRIR O TAMANHO DA ?REA DE LATOSSOLO VERMELHO NO BRASIL
unique(tb2$DESC_)

# CONTINUAR A PARTIR DAQUI


# 5.3 - UNINDO CONJUNTOS DE DADOS
s1 <- tb2[tb2$DESC_=='Nitossolo Vermelho',]
s2 <- tb2[tb2$DESC_=='Nitossolo H?plico',]

s3 <- rbind(s1,s2)

# 5.4 - CONTROLADORES DE FLUXO 

# 5.4.1 - IF (OU ESTRUTURA CONDICIONAL)

# TESTANDO A IDENTIFICA??O DA TEXTURA DE UM SOLO
tx1 <- c('Nitossolo Vermelho','Latossolo Vermelho','Gleissolo H?plico','Argilossolo Vermelho')
tx2 <- c('Neossolo Lit?lico','Neossolo Quartzar?nico','Luvissolo Cr?mico','Cambissolo H?plico')
tx3 <- c('Massa d??gua','Afloramentos de Rochas','Dunas')

x <- 'NOME DO SOLO AQUI'

# TESTE DA CONDIÇÃO COMO VERDADEIRA (TRUE) OU FALSA (FALSE)
# x < y -	x menor que y?
# x <= y -	x menor ou igual a y?
# x > y -	x maior que y?
# x >= y - x maior ou igual a y?
# x == y - x igual a y?
# x != y - x diferente de y?
# !x 	Negativa de x
# x | y -	x ou y s?o verdadeiros?
# x & y -	x e y s?o verdadeiros?
# xor(x, y) -	x ou y s?o verdadeiros (apenas um deles)?
# x %in% y - x em y

if(x %in% tx1){
  print('Solo argiloso')
}

# CONTINUAR PARA TODAS AS TEXTURAS DE SOLO

# 5.4.2 - FOR (OU ESTRUTURA DE REPETI??O)
# SEPARANDO UM N?MERO LIMITADO DE MUNIC?PIOS

# df <- c()
# for(i in 1:nrow(tb1)){
#   d <- tb2[tb2$GEOCODIGO==tb1$GEOCOD[i],]
#   df <- rbind(df,d)
# }


# 5.5 - EXPORTANDO DADOS


write.csv(df,'SoloSelect.csv',quote = F,dec=',',sep = ';',row.names = F)

# OUTROS COMANDOS DE EXPORTAÇÃO
# write.table() - PARA DADOS NO FORMATO TEXTO, OU EM OUTROS FORMATOS UTILIZADOS POR OUTROS PROGRAMAS
# write.xlsx() - UTILIZADO PELO PACOTE 'xlsx', PARA EXPORTAR ARQUIVOS NO FORMATO EXCEL
# Write.XLS() - FAZ O MESMO DO ACIMA, MAS DE FORMA MAIS SEGURA E PRÁTICA - PACOTE 'WriteXLS'

# 6 - GRÁFICOS ----
# 6.1 - SCATTER PLOT
n <- 100
x <- 1:n
y <- 5 + 2 * x + rnorm(n, sd = 30)
plot(x, y)

# 6.2 - LINHAS
plot(x, y, type = "l")

# 6.3 - HISTOGRAMA
hist(rnorm(1000))
hist(rnorm(1000), breaks = 6)

# DESCOBRIR NO ?HELP DESTE COMANDO, COMO MUDAR A LEGENDA E O T?TULO

# 6.4 - BAR PLOT
# USAR EXEMPLO DO ?HELP DESSA DESTE COMANDO

# 7 - FUNÇÕES ----
# CRIE SEU PRÓPRIO COMANDO NO R

tp1 <- function(){
 
}

