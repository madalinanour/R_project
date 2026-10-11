# Model Multinomial 100

tranzactii <- Date$Multinomial_100
library(depmixS4)
tranzactii <- factor(tranzactii, levels = c("L", "M", "H"), ordered=TRUE)
model <- depmix(tranzactii ~ 1, family = multinomial("identity"), nstates = 3, data = data.frame(tranzactii))
set.seed(123)
model_fit <- fit(model)
summary(model_fit)
parametrii <- getpars(model_fit)
parametrii[1:3] <- c(0.333, 0.333, 0.334)
parametrii[parametrii == 0] <- 1e-06

loglik1_multi_100 <- numeric(86)

for(i in 1:86) {
  secventa_n <- tranzactii[i:(i+14)]
  
  mat_n <- matrix(0, nrow=15, ncol=3)
  colnames(mat_n) <- c("L", "M", "H")
  mat_n[cbind(1:15, as.numeric(secventa_n))] <- 1
  
  model_n <- depmix(mat_n ~ 1, family = multinomial("identity"), nstates = 3, ntimes = 15)
  model_n <- setpars(model_n, parametrii)
  loglik1_multi_100[i] <- logLik(model_n)
}
print(loglik1_multi_100)

loglik2_multi_100 <- numeric(86)

for(i in 1:86) {
  secventa_f <- tranzactii[i:(i+14)]
  secventa_f[15] <- factor("H", levels = c("L", "M", "H"))
  
  mat_f <- matrix(0, nrow=15, ncol=3)
  colnames(mat_f) <- c("L", "M", "H")
  mat_f[cbind(1:15, as.numeric(secventa_f))] <- 1
  
  model_f <- depmix(mat_f ~ 1, family = multinomial("identity"), nstates = 3, ntimes = 15)
  model_f <- setpars(model_f, parametrii)
  loglik2_multi_100[i] <- logLik(model_f)
}
print(loglik2_multi_100)

# Model Multinomial 500

tranzactii <- Date$Multinomial_500
library(depmixS4)
tranzactii <- factor(tranzactii, levels = c("L", "M", "H"), ordered=TRUE)
model <- depmix(tranzactii ~ 1, family = multinomial("identity"), nstates = 3, data = data.frame(tranzactii))
set.seed(123)
model_fit <- fit(model)
summary(model_fit)
parametrii <- getpars(model_fit)
parametrii[1:3] <- c(0.333, 0.333, 0.334)
parametrii[parametrii == 0] <- 1e-06

loglik1_multi_500 <- numeric(86)

for(i in 1:86) {
  secventa_n <- tranzactii[i:(i+14)]
  
  mat_n <- matrix(0, nrow=15, ncol=3)
  colnames(mat_n) <- c("L", "M", "H")
  mat_n[cbind(1:15, as.numeric(secventa_n))] <- 1
  
  model_n <- depmix(mat_n ~ 1, family = multinomial("identity"), nstates = 3, ntimes = 15)
  model_n <- setpars(model_n, parametrii)
  loglik1_multi_500[i] <- logLik(model_n)
}
print(loglik1_multi_500)

loglik2_multi_500 <- numeric(86)

for(i in 1:86) {
  secventa_f <- tranzactii[i:(i+14)]
  secventa_f[15] <- factor("H", levels = c("L", "M", "H"))
  
  mat_f <- matrix(0, nrow=15, ncol=3)
  colnames(mat_f) <- c("L", "M", "H")
  mat_f[cbind(1:15, as.numeric(secventa_f))] <- 1
  
  model_f <- depmix(mat_f ~ 1, family = multinomial("identity"), nstates = 3, ntimes = 15)
  model_f <- setpars(model_f, parametrii)
  loglik2_multi_500[i] <- logLik(model_f)
}
print(loglik2_multi_500)

# Model Gaussian 100

tranzactii <- Date$Gaussian_100
library(depmixS4)
model <- depmix(tranzactii ~ 1, family = gaussian(), nstates =3, data = data.frame(tranzactii))
set.seed(123)
model_fit <- fit(model)
summary(model_fit)
parametrii <- getpars(model_fit)
parametrii[1:3] <- c(0.333, 0.333, 0.334)

loglik1_gauss_100 <- numeric(86)

for(i in 1:86) {
  secventa_n <- tranzactii[i:(i+14)]
  model_n <- depmix(secventa_n ~ 1, family = gaussian(), nstates =3, ntimes =15)
  model_n <- setpars(model_n, parametrii)
  loglik1_gauss_100[i] <- logLik(model_n)
}
print(loglik1_gauss_100)

loglik2_gauss_100 <- numeric(86)

for(i in 1:86) {
  secventa_f <- tranzactii[i:(i+14)]
  secventa_f[15] <- 1500
  model_f <- depmix(secventa_f ~ 1, family = gaussian(), nstates =3, ntimes =15)
  model_f <- setpars(model_f, parametrii)
  loglik2_gauss_100[i] <- logLik(model_f)
}
print(loglik2_gauss_100)

# Model Gaussian 500

tranzactii <- Date$Gaussian_500
library(depmixS4)
model <- depmix(tranzactii ~ 1, family = gaussian(), nstates =3, data = data.frame(tranzactii))
set.seed(123)
model_fit <- fit(model)
summary(model_fit)
parametrii <- getpars(model_fit)
parametrii[1:3] <- c(0.333, 0.333, 0.334)

loglik1_gauss_500 <- numeric(86)

for(i in 1:86) {
  secventa_n <- tranzactii[i:(i+14)]
  model_n <- depmix(secventa_n ~ 1, family = gaussian(), nstates =3, ntimes =15)
  model_n <- setpars(model_n, parametrii)
  loglik1_gauss_500[i] <- logLik(model_n)
}
print(loglik1_gauss_500)

loglik2_gauss_500 <- numeric(86)

for(i in 1:86) {
  secventa_f <- tranzactii[i:(i+14)]
  secventa_f[15] <- 1500
  model_f <- depmix(secventa_f ~ 1, family = gaussian(), nstates =3, ntimes =15)
  model_f <- setpars(model_f, parametrii)
  loglik2_gauss_500[i] <- logLik(model_f)
}
print(loglik2_gauss_500)