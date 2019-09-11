## 1. INSTALA??O/EXECU??O DE PACOTES EM R ----

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

## 2. OPERADORES EM R ----

# 2.1 - OPERADORES NUM?RICOS

1 + 1    # adi??o
## [1] 2
4 - 2    # subtra??o
## [1] 2
2 * 3    # multiplica??o
## [1] 6
5 / 3    # divis?o
## [1] 1.666667
4 ^ 2    # pot?ncia
## [1] 16
5 %% 3   # resto da divis?o de 5 por 3
## [1] 2
5 %/% 3  # parte inteira da divis?o de 5 por 3
## [1] 1


# 2.2 - OPERADORES MATEM?TICOS COM O R

sqrt(9)   # Raiz Quadrada
#[1] 3
abs( - 1 )  # M?dulo ou valor absoluto
#[1] 1
abs( 1 )
#[1] 1
log( 10 )   # Logaritmo natural ou neperiano (ln)
#[1] 2.302585
log( 10, base = 10) # Logaritmo base 10
#[1] 1
log10(10)   # Tamb?m logaritmo de base 10
#[1] 1
log( 10, base = 3.4076) # Logaritmo base 3.4076
#[1] 1.878116
exp( 1 )       # Exponencial
#[1] 2.718282
factorial( 4 )         # Fatorial de 4
#[1] 24
choose(10, 3)          # Coeficientes binomiais: combina??o de 10 3-a-3
#[1] 120


# 2.3 - FUN??ES TRIGONOM?TRICAS

sin(0.5*pi)    # Seno
#[1] 1
cos(2*pi)      # Coseno
#[1] 1
tan(pi)        # Tangente
#[1] -1.224647e-16
asin(1)       # Arco seno (em radianos)
#[1] 1.570796
asin(1) / pi * 180
#[1] 90
acos(0)      # Arco coseno (em radianos)
#[1] 1.570796
acos(0) / pi * 180
#[1] 90
atan(0)    # Arco tangente (em radianos)
#[1] 0
atan(0) / pi * 180
#[1] 0

# 2.4 - FUN??ES DE ARREDONDAMENTO

ceiling( 4.3478 )
#[1] 5
floor( 4.3478 )
#[1] 4
round( 4.3478 )
#[1] 4
round( 4.3478 , digits=3)
#[1] 4.348
round( 4.3478 , digits=2)
#[1] 4.35


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
"Error: objeto x n?o encontrado"
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

# complex (raramente utilizado para an?lise de dados)
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

# 3.3 - SEQU?NCIAS NUM?RICAS

# SEQU?NCIA SIMPLES

1:4 # CRESCENTE

4:1 # DECRESCENTE

# SEQU?NCIA COM ORDEM DEFINIDA

seq(1,20,by=2) # CRESCENTE
 
seq(20,1,by=-2) # DECRESCENTE

seq(1,20,length=5) # QUANDO APENAS QUEREMOS UM VETOR DE TAMANHO DEFINIDO, EMBORA N?O SAIBAMOS O ESPA?O ENTRE OS N?MEROS

# POR REPETI??O

rep(3,times=5)

rep(1:5, 3)

rep(1:5,each=3)

# SEQU?NCIA DE N?MEROS EM UMA DISTRIBUI??O NORMAL

vn1 <-  rnorm( 1000, mean = 40,  sd = 9 )

# OUTRAS DISTRIBUI??ES:
# rpois, rbinom, runif....

# ORDENANDO A SEQU?NCIA:

x  <-  sort( rnorm(1000, mean=1) ) # CRESCENTE

x  <-  sort( rnorm(1000, mean=1), decreasing = T ) # DECRECENTE
x  <-  rev(sort( rnorm(1000, mean=1) )) # DECRESCENTE

# MATEM?TICA COM VETORES

a <-  c(1, 10, 3.4, pi, pi/4, exp(-1), log( 2.23 ), sin(pi/7) )
b <-  1:8
c <-  20:32
d <-  2.5:10
 
sqrt( a )# RAIZ QUADRADA DE UM VETOR

a - b # SOMA OU SUBTRA??O DE VETORES

a^(1/b) # POTENCIA DE VETORES

mean( a ) # M?DIA

var( b ) # VARI?NCIA

max( c ) # VALOR M?XIMO DENTRO DO VETOR

min( b ) # VALOR M?NIMO DENTRO DO VETOR

sd( a ) # DESVIO PADR?O

sum( c ) # SOMA DOS VALORES DENTRO DE UM VETOR

range( c ) # EXTREMOS M?NIMOS E M?XIMOS DENTRO DE UM VETOR

cumsum(a) # SOMAT?RIO ACUMULATIVO DOS ELEMENTOS DO VETOR

diff(a) # DIFEREN?A ENTRE OS ELEMENTOS DO VETOR

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

# CRIANDO UMA MATRIZ ALEAT?RIA (INCID?NCIA DE UMA DOEN?A POR TRATAMENTO)
m1 <- matrix( 
 rnorm(20,50,10), 
  ncol = 2,
  nrow = 10,
  byrow = TRUE)

colnames(m1) <- c('Tratamento 1', 'Tratamento 2')
rownames(m1) <- 1:10

# 3.4 - LISTAS

x <- list(1:5, "Z", TRUE, c("a", "b"))
x

# 3.5 - DATA.FRAME
# S?O TABELAS COM DADOS A SEREM TRABALHADOS, CONTENDO ELEMENTOS DE MULTIPLAS CLASSES

# 4 - IMPORTANDANDO DADOS ----

tb1 <- read.csv('piraclim.csv',dec = ',')

# 4.1 - COMANDOS SUPER ÚTEIS

head(tb1) # Mostra as primeiras 6 linhas.
tail(tb1) # Mostra as Últimas 6 linhas.
nrow(tb1) # N?mero de linhas
ncol(tb1) # N?mero de colunas
dim(tb1) # N?mero de linhas e de colunas.
names(tb1) # Os nomes das colunas (vari?veis).
str(tb1) # Estrutura do data.frame. Mostra, entre outras coisas, as classes de cada coluna.

# 4.2 - MUDAN?A DE CLASSES DE UMA COLUNA:



#CASO ESPECIAL PARA FATORES:





# 5 - TRABALHANDO EM UM BANCO DE DADOS ----

# 5.1 OPERADORES LÓGICOS

x == y # x igual a y
x != y # x diferente de y
x < y #	x menor que y
x <= y #	x menor ou igual a y
x > y #	x maior que y
x >= y # x maior ou igual a y
!x 	# Negativa de x
x | y #	x ou y são verdadeiros
x & y #	x e y são verdadeiros
xor(x, y) #	x ou y são verdadeiros (apenas um deles)
x %in% y # x em y

# 5.2 - FILTRANDO DADOS POR UMA VARI?VEL
tb1 <- tb1[tb1$ANO!='1986',]

# 5.4 - UNINDO CONJUNTOS DE DADOS
s1 <- tb1[tb1$ANO=='1986',]
s2 <- tb1[tb1$ANO=='2018',]

s3 <- rbind(s1,s2)

# 5.5 - CONTROLADORES DE FLUXO 

# 5.5.1 - IF (OU ESTRUTURA CONDICIONAL)

x <- 1991
if(x %in% tb1$ANO){
  print('Ano presente')
}else{
  print('Ano não presente')
}



# 5.5.2 - FOR (OU ESTRUTURA DE REPETIÇÃO)
# SEPARANDO UM NÚMERO LIMITADO DE OCORRÊNCIAS

#ENCONTRANDO TEMPERATURA MÉDIA
TMED <- c()
for(i in 1:nrow(tb1)){
  
}

# EXERCICIO PARA TROCAR A CLASSE DAS VARIAVEIS PRINCIPAIS



# EXERCÍCIO PARA CORRIGIR A EVAP

sample(rnorm(1000,mean=5,sd=1),1)

# EXTRAINDO A MEDIA DE TODAS AS VARIAVEIS

#t <- tb1[tb1$ANO %in% c(1986:1990),] # CASO QUEIRA UTILIZAR UMA FAIXA ESPECIFICA DE ANOS
t <- tb1
m <- c();
for(i in 4:ncol(t)){
  m <- append(m,mean(t[,i]))
}

names(m) <- names(t)[4:ncol(t)]

# 5.6 - EXPORTANDO DADOS


write.csv(df,'NovaTabela.csv',quote = F,dec=',',sep = ';',row.names = F)

# OUTROS COMANDOS DE EXPORTAÇÃO
# write.table() - PARA DADOS NO FORMATO TEXTO, OU EM OUTROS FORMATOS UTILIZADOS POR OUTROS PROGRAMAS
# write.xlsx() - UTILIZADO PELO PACOTE 'xlsx', PARA EXPORTAR ARQUIVOS NO FORMATO EXCEL
# Write.XLS() - FAZ O MESMO DO ACIMA, MAS DE FORMA MAIS SEGURA E PR?TICA - PACOTE 'WriteXLS'

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
# 7.1 CRIE SEU PRÓPRIO COMANDO NO R


Estat_clim <- function(DataF,estat){
  t <- DataF[,c(4:ncol(DataF))]
  n <- length(t)
  
  resultado <- numeric(n)
  
  names(resultado) <- names(t)
  
  for(i in 1:ncol(t)){
    resultado[i] <- estat(as.numeric(as.character(t[[i]])))
  }
  
  return(resultado)
}


Estat_clim(tb1,mean)

# 7.2 FAMILIA apply ----

# apply:

apply(tb1[,c(4:ncol(tb1))], 2,mean)

# sapply: RESULTADO NA FORMA DE VETOR

tb1[,c(4:ncol(tb1))] <- sapply(tb1[,c(4:ncol(tb1))],as.character)
tb1[,c(4:ncol(tb1))] <- sapply(tb1[,c(4:ncol(tb1))],as.numeric)


sapply(tb1[,c(4:ncol(tb1))], mean)

# lapply: RESULTADO NA FORMA DE LISTA
lapply(tb1[,c(4:ncol(tb1))], mean)


# COMPARATIVO DE PERFORMANCE

install.packages('microbenchmark') # CASO JA TENHA ESSA PACOTE, PULAR ESSA LINHA

library(microbenchmark)

microbenchmark(sapply(tb1[,c(4:ncol(tb1))], mean),tp1(tb1,mean))

