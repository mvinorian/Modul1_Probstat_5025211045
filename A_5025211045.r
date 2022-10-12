# Soal 1
x = 3
p = 0.20
N = 10000

# 1a
P = dgeom(x, p)
print(P)

# 1b
set.seed(0)
m = mean(rgeom(n = N, prob = p) == 3)
print(m)

#1d
X = rgeom(n = N, prob = p)
hist(X, main = "Histogram Distribusi Geometrik",
     xlim = c(0, 25),
     col = "lightblue")

# 1e
mean = 1 / p
variance = (1 - p) / (p ^ 2)
print(mean)
print(variance)


# Soal 2
S = 20
p = 0.2
x = 4

# 2a
P = dbinom(x, S, prob = p)
print(P)

# 2b
X = rbinom(n = x, size = S, prob = P)
hist(X, main = "Histogram Distribusi Binomial",
     xlim = c(0, 10),
     col = "lightblue")

# 2c
mean = S * p
variance = S * p * (1-p)
print(mean)
print(variance)

# Soal 3
l = 4.5
x = 6

# 3a
P = dpois(x, lambda = l)
print(P)

# 3b
X = rpois(n = 365, lambda = l)
hist(X, main = "Histogram Distribusi Poisson",
     xlim = c(0, 15),
     col = "lightblue")

# 3d
mean = variance = l
print(mean)
print(variance)

# Soal 4
x = 2
v = 10

# 4a
P = dchisq(x, v)
print(P)

# 4b
X = rchisq(n = 100, df = v)
hist(X, main = "Histogram Distribusi Chi-Square",
     xlim = c(0, 30),
     col = "lightblue")

# 4c
mean = v
variance = 2 * v
print(mean)
print(variance)

# Soal 5
l = 3

# 5a
P = dexp(x = 10, rate = l)
print(P)

# 5b
X = rexp(n = 10, rate = l)
hist(X, main = "Histogram Distribusi Exponensial n = 10",
     xlim = c(0, 5),
     col = "lightblue")
X = rexp(n = 100, rate = l)
hist(X, main = "Histogram Distribusi Exponensial n = 100",
     xlim = c(0, 5),
     col = "lightblue")
X = rexp(n = 1000, rate = l)
hist(X, main = "Histogram Distribusi Exponensial n = 1000",
     xlim = c(0, 5),
     col = "lightblue")
X = rexp(n = 10000, rate = l)
hist(X, main = "Histogram Distribusi Exponensial n = 10000",
     xlim = c(0, 5),
     col = "lightblue")
par(mfrow = c(2, 2))

# 5c
n = 100
set.seed(1)
mean = mean(rexp(n, rate = l))
set.seed(1)
variance = var(rexp(n, rate = l))
print(mean)
print(variance)

# Soal 6
n = 100
mean = 50
sd = 8

# 6a
set.seed(1)
P = dnorm(x = n, mean, sd)
data = rnorm(n, mean, sd)
m = mean(data)
x1 = floor(m)
x2 = ceiling(m)
z1_score = (x1 - mean) / sd(data)
z2_score = (x2 - mean) / sd(data)
print(P)
print(z1_score)
print(z2_score)
plot(data, main = "Data Eksperimen Random dengan Distribusi Normal")

# 6b
set.seed(1)
X = rnorm(n, mean, sd)
hist(X, main = "5025211045_Muhammad Ersya Vinorian_Probstat_A_DNhistogram",
     xlim = c(0, 100),
     breaks = 50,
     col = "lightblue")
par(mfrow = c(1, 1))

# 6c
set.seed(1)
variance = var(rnorm(n, mean, sd))
print(variance)
