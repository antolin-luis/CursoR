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

## 2. OPERADORES EM R ----

# 2.1 - OPERADORES NUMÉRICOS

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


# 2.2 - OPERADORES MATEMÁTICOS COM O R

sqrt(9)   # Raiz Quadrada
#[1] 3
abs( - 1 )  # Módulo ou valor absoluto
#[1] 1
abs( 1 )
#[1] 1
log( 10 )   # Logaritmo natural ou neperiano (ln)
#[1] 2.302585
log( 10, base = 10) # Logaritmo base 10
#[1] 1
log10(10)   # Também logaritmo de base 10
#[1] 1
log( 10, base = 3.4076) # Logaritmo base 3.4076
#[1] 1.878116
exp( 1 )       # Exponencial
#[1] 2.718282
factorial( 4 )         # Fatorial de 4
#[1] 24
choose(10, 3)          # Coeficientes binomiais: combinação de 10 3-a-3
#[1] 120


# 2.3 - FUNÇÕES TRIGONOMÉTRICAS

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

# 2.4 - FUNÇÕES DE ARREDONDAMENTO

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

# 3.3 - SEQUÊNCIAS NUMÉRICAS

# SEQUÊNCIA SIMPLES

1:4 # CRESCENTE

4:1 # DECRESCENTE

# SEQUÊNCIA COM ORDEM DEFINIDA

seq(1,20,by=2) # CRESCENTE
 
seq(20,1,by=-2) # DECRESCENTE

seq(1,20,length=5) # QUANDO APENAS QUEREMOS UM VETOR DE TAMANHO DEFINIDO, EMBORA NÃO SAIBAMOS O ESPAÇO ENTRE OS NÚMEROS

# POR REPETIÇÃO

rep(3,times=5)

rep(1:5, 3)

rep(1:5,each=3)

# SEQUÊNCIA DE NÚMEROS EM UMA DISTRIBUIÇÃO NORMAL

vn1 <-  rnorm( 1000, mean = 40,  sd = 9 )

# OUTRAS DISTRIBUIÇÕES:
# rpois, rbinom, runif....

# ORDENANDO A SEQUÊNCIA:

x  <-  sort( rnorm(1000, mean=1) ) # CRESCENTE

x  <-  sort( rnorm(1000, mean=1), decreasing = T ) # DECRECENTE
x  <-  rev(sort( rnorm(1000, mean=1) )) # DECRESCENTE

# MATEMÁTICA COM VETORES

a <-  c(1, 10, 3.4, pi, pi/4, exp(-1), log( 2.23 ), sin(pi/7) )
b <-  1:8
c <-  20:32
d <-  2.5:10
 
sqrt( a )# RAIZ QUADRADA DE UM VETOR

a - b # SOMA OU SUBTRAÇÃO DE VETORES

a^(1/b) # POTENCIA DE VETORES

mean( a ) # MÉDIA

var( b ) # VARIÂNCIA

max( c ) # VALOR MÁXIMO DENTRO DO VETOR

min( b ) # VALOR MÍNIMO DENTRO DO VETOR

sd( a ) # DESVIO PADRÃO

sum( c ) # SOMA DOS VALORES DENTRO DE UM VETOR

range( c ) # EXTREMOS MÍNIMOS E MÁXIMOS DENTRO DE UM VETOR

cumsum(a) # SOMATÓRIO ACUMULATIVO DOS ELEMENTOS DO VETOR

diff(a) # DIFERENÇA ENTRE OS ELEMENTOS DO VETOR

# 3.3 - MATRIZES
# SÃO VETORES DE 2 DIMENSÕES QUE ACEITAM APENAS ELEMENTOS DE UMA CLASSE

m <- matrix(1:6, nrow = 2, ncol = 3)
m

m[3,  ]   # seleciona a terceira linha
m[ , 2]   # seleciona a segunda coluna
m[1, 2]   # seleciona o primeiro elemento da segunda coluna
t(m)      # matriz transposta
m %*% n   # multiplicação matricial
solve(m)  # matriz inversa de m

# CRIANDO UMA MATRIZ ALEATÓRIA (INCIDÊNCIA DE UMA DOENÇA POR TRATAMENTO)
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
# SÃO TABELAS COM DADOS A SEREM TRABALHADOS, CONTENDO ELEMENTOS DE MULTIPLAS CLASSES

# 4 - IMPORTANDANDO DADOS ----

tb1 <- read.csv('piraclim.csv',dec = ',')

# 4.1 - COMANDOS SUPER ÚTEIS

head(tb1) # Mostra as primeiras 6 linhas.
tail(tb1) # Mostra as últimas 6 linhas.
nrow(tb1) # Número de linhas
ncol(tb1) # Número de colunas
dim(tb1) # Número de linhas e de colunas.
names(tb1) # Os nomes das colunas (variáveis).
str(tb1) # Estrutura do data.frame. Mostra, entre outras coisas, as classes de cada coluna.

# 4.2 - MUDANÇA DE CLASSES DE UMA COLUNA:
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
x %in% y - x em y

# 5.2 - FILTRANDO DADOS POR UMA VARIÁVEL
tb1 <- tb1[tb1$NOME!=' ',]
# 5.3 - EXECUTANDO OPERAÇÕES MATEMÁTICAS
# DESCOBRIR O TAMANHO DA ÁREA DE LATOSSOLO VERMELHO NO BRASIL
unique(tb2$DESC_)

# CONTINUAR A PARTIR DAQUI


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



# 5.5.2 - FOR (OU ESTRUTURA DE REPETI??O)
# SEPARANDO UM NÚMERO LIMITADO DE OCORRÊNCIAS

df <- c()
for(i in 1:nrow(tb1)){
  d <- tb1[tb1$RAIN>=tb1$GEOCOD[i],]
  df <- rbind(df,d)
}


# 5.6 - EXPORTANDO DADOS


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

