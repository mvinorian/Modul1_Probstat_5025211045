# Modul1_Probstat_5025211045

Muhammad Ersya Vinorian <br>
5025211045

# **Soal 1**

> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

### **Soal 1a**

Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi? (Distribusi Geometrik)

### **Penyelesaian Soal 1a**

Dapat diselesaikan dengan fungsi `dgeom()` dengan parameter `x = 3` sebagai banyak orang yang tidak menghadiri acara vaksinasi dan `p = 0,20` sebagai peluang dari populasi menghadiri vaksinasi. Berikut adalah kode dan hasil dari pengerjaan dari soal 1a menggunakan RStuido.

```r
x = 3
p = 0.20

P = dgeom(x, p)
print(P)
```

![Penyelesaian Soal 1a](https://user-images.githubusercontent.com/54766683/195108800-c2bf7352-287d-4192-b5d1-86ce0b17f601.png)


### **Soal 1b**

Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 (distribusi geometrik acak () == 3)

### **Penyelesaian 1b**

Dapat diselesaikan dengan fungsi `mean()` dengan parameter pembangkit Distribusi Geometrik acak `rgeom() == 3` dan `N = 10000`. Berikut adalah kode dan hasil pengerjaan dari soal 1b menggunakan RStudio.

```r
p = 0.20
N = 10000

m = mean(rgeom(n = N, prob = p) == 3)
print(m)
```

![Penyelesaian Soal 1b](https://user-images.githubusercontent.com/54766683/195100619-9c15a37b-2bc2-48df-b617-bcfd3f67c27b.png)

### **Soal 1c**

Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?

### **Jawaban Soal 1c**

Hasil perhitungan pada poin a dan poin b berbeda. Pada poin a, fungsi yang dipanggil adalah `dgeom()`. Fungsi tersebut akan menghasilkan peluang berdasarkan fungsi pdf dari Distribusi Geometrik sehingga hasil pemanggilan pada poin a akan selalu tetap.

Sedangkan pada poin b, fungsi yang dipanggil adalah `rgeom()`. Fungsi tersebut akan menghasilkan peluang berdasarkan eksperimen secara random. Sehingga hasil pemanggilan pada poin b akan selalu berubah-ubah. Tetapi hasil yang didapatkan tidak akan menyimpang jauh dari hasil pada poin a.

### **Soal 1d**

Histogram Distribusi Geometrik, Peluang X = 3 gagal Sebelum Sukses Pertama

### **Penyelesaian Soal 1d**

Histogram dari Distribusi Geometrik dapat dihasilkan dengan pemanggilan fungsi `hist()` dengan parameter pembangkit Distribusi Geometrik acak `rgeom()`. Berikut adalah kode dan hasil pengerjaan dari soal 1d menggunakan RStudio.

```r
p = 0.20
N = 10000
X = rgeom(n = N, prob = p)

hist(X, main = "Histogram Distribusi Geometrik",
     xlim = c(0, 25),
     col = "lightblue")
```

![Histogram Distribusi Geometrik](https://user-images.githubusercontent.com/54766683/195102418-c14b4368-27aa-48bc-a48f-0a85c9eaa898.png)

### **Soal 1e**

Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

### **Penyelesaian Soal 1e**

Nilai rataan dari Distribusi Geometrik dapat dicari menggunakan rumus $\mu=\frac1p$ dan variannya menggunakan rumus $\sigma^2=\frac{1-p}{p^2}$. Berikut adalah kode dan hasil pengerjaan dari soal 1e menggunakan RStudio.

```r
p = 0.20

mean = 1 / p
variance = (1 - p) / (p ^ 2)
print(mean)
print(variance)
```

![Penyelesaian Soal 1e](https://user-images.githubusercontent.com/54766683/195103970-04cc6cb7-d70a-4df2-b6df-972a1e886db9.png)

# **Soal 2**

> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2.

### **Soal 2a**

Peluang terdapat 4 pasien yang sembuh.

### **Penyelesaian Soal 2a**

Dapat diselesaikan dengan fungsi `dbinom()` dengan parameter `x = 4` sebagai pasien sembuh, `S = 20` sebagai total pasien penderita Covid19, dan `p = 0.2` sebagai peluang pasien sembuh. Berikut adalah kode dan hasil pengerjaan dari soal 2a menggunakan RStudio.

```r
S = 20
p = 0.2
x = 4

P = dbinom(x, S, prob = p)
print(P)
```

![Penyelesaian Soal 2a](https://user-images.githubusercontent.com/54766683/195108525-054ffde2-5a93-4100-9827-45a5b4d0628d.png)

### **Soal 2b**

Gambarkan grafik histogram berdasarkan kasus tersebut.

### **Penyelesaian Soal 2b**

Histogram dari Distribusi Binomial dapat dihasilkan dengan pemanggilan fungsi `hist()` dengan parameter pembangkit Distribusi Binomial acak `rbinom()`. Berikut adalah kode dan hasil pengerjaan dari soal 2b menggunakan RStudio.

```r
S = 20
p = 0.2
x = 4

X = rbinom(n = x, size = S, prob = P)
hist(X, main = "Histogram Distribusi Binomial",
     xlim = c(0, 5),
     col = "lightblue")
```

![Penyelesaian Soal 2b](https://user-images.githubusercontent.com/54766683/195111400-470c9546-d4ac-42a6-89cd-3454a793c0d2.png)

### **Soal 2c**

Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.

### **Penyelesaian Soal 2c**

Nilai rataan dari Distribusi Binomial dapat dicari menggunakan rumus $\mu=n\cdot p$ dan variannya menggunakan rumus $\sigma^2=n\cdot p \cdot \left(1-p\right)$. Berikut adalah kode dan hasil pengerjaan dari soal 2c menggunakan RStudio.

```r
S = 20
p = 0.2

mean = S * p
variance = S * p * (1-p)
print(mean)
print(variance)
```

![Penyelesaian Soal 2c](https://user-images.githubusercontent.com/54766683/195114236-210d8a2b-4f17-40f0-a29e-dee1ee6da2b8.png)


# **Soal 3**

> Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

### **Soal 3a**

Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

### **Penyelesaian Soal 3a**

Dapat diselesaikan dengan fungsi `dpois()` dengan parameter `x = 6` sebagai jumlah bayi yang akan lahir dan `l = 4.5` sebagai rata-rata historis kelahiran bayi setiap harinya. Berikut adalah kode dan hasil pengerjaan dari soal 3a menggunakan RStudio.

```r
l = 4.5
x = 6

P = dpois(x, lambda = l)
print(P)
```

![Penyelesaian Soal 3a](https://user-images.githubusercontent.com/54766683/195117186-7ddc4e16-dd57-43d1-bab5-6c2a92d866ba.png)

### **Soal 3b**

Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)!

### **Penyelesaian Soal 3b**

Histogram dari Distribusi Poisson dapat dihasilkan dengan pemanggilan fungsi `hist()` dengan parameter pembangkit Distribusi Poisson acak `rpois()`. Berikut adalah kode dan hasil pengerjaan dari soal 3b menggunakan RStudio.

```r
l = 4.5

X = rpois(n = 365, lambda = l)
hist(X, main = "Histogram Distribusi Poisson",
     xlim = c(0, 15),
     col = "lightblue")
```

![Penyelesaian Soal 3b](https://user-images.githubusercontent.com/54766683/195119663-96864c62-cf49-4cc4-832d-042edb6c6afb.png)

### **Soal 3c**

Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?

### **Jawaban Soal 3c**

Hasil perhitungan pada poin a dan poin b berbeda. Pada poin a, fungsi yang dipanggil adalah `dpois()`. Fungsi tersebut akan menghasilkan peluang berdasarkan fungsi pdf dari Distribusi Geometrik sehingga hasil pemanggilan pada poin a akan selalu tetap. Poin a juga hanya menunjukkan hasil untuk satu hari saja.

Sedangkan pada poin b, fungsi yang dipanggil adalah `rpois()`. Fungsi tersebut akan menghasilkan peluang berdasarkan eksperimen secara random. Sehingga hasil pemanggilan pada poin b akan selalu berubah-ubah. Pada poin b, hasil yang ditunjukkan adalah untuk 365 hari. Sehingga hasil yang didapatkan pada poin b tidak akan menyimpang jauh dari hasil pada poin a dikali dengan 365 hari.

### **Soal 3d**

Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

### **Penyelesaian Soal 3d**

Nilai rataan dan varian dari Distribusi Poisson akan sama dengan lambda $\left(\lambda\right)$. Berikut adalah kode dan hasil pengerjaan dari soal 3d menggunakan RStudio.

```r
l = 4.5

mean = variance = l
print(mean)
print(variance)
```

![Penyelesaian Soal 3d](https://user-images.githubusercontent.com/54766683/195122273-5fbf819c-d525-48ed-bc17-64f9285d4974.png)

# **Soal 4**

> Diketahui nilai x = 2 dan v = 10.

### **Soal 4a**

Fungsi Probabilitas dari Distribusi Chi-Square.

### **Penyelesaian Soal 4a**

Dapat diselesaikan dengan fungsi `dchisq()` dengan parameter `x = 2` dan `v = 10`. Berikut adalah kode dan hasil pengerjaan dari soal 4a menggunakan RStudio.

```r
x = 2
v = 10

P = dchisq(x, v)
print(P)
```

![Penyelesaian Soal 4a](https://user-images.githubusercontent.com/54766683/195126054-40ded5d4-710b-4bd7-a4ff-9b1a1024bfef.png)

### **Soal 4b**

Histogram dari Distribusi Chi-Square dengan 100 data random.

### **Penyelesaian Soal 4b**

Histogram dari Distribusi Chi-Square dapat dihasilkan dengan pemanggilan fungsi `hist()` dengan parameter pembangkit Distribusi Chi-Square acak `rchisq()`. Berikut adalah kode dan hasil pengerjaan dari soal 4b menggunakan RStudio.

```r
v = 10

X = rchisq(n = 100, df = v)
hist(X, main = "Histogram Distribusi Chi-Square",
     xlim = c(0, 30),
     col = "lightblue")
```

![Penyelesaian Soal 4b](https://user-images.githubusercontent.com/54766683/195128216-461e2a4e-d684-419a-9ddb-037683105782.png)

## **Soal 4c**

Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.

## **Penyelesaian Soal 4c**

Nilai rataan dari Distribusi Chi-Square dapat dicari menggunakan rumus $\mu=v$ dan variannya menggunakan rumus $\sigma^2=v^2$. Berikut adalah kode dan hasil pengerjaan dari soal 4c menggunakan RStudio.

```r
x = 2
v = 10

mean = v
variance = 2 * v
print(mean)
print(variance)
```

![Penyelesaian Soal 4c](https://user-images.githubusercontent.com/54766683/195141301-6298b58a-b326-4d45-a560-52d0dca2d96b.png)

# **Soal 5**

> Diketahui bilangan acak (*random variable*) berdistribusi exponential (λ = 3).

### **Soal 5a**

Fungsi Probabilitas dari Distribusi Exponensial.

### **Penyelesaian Soal 5a**

Dapat diselesaikan dengan fungsi `dexp()` dengan parameter `l = 3` dan `x = 10`. Berikut adalah kode dan hasil pengerjaan dari soal 5a menggunakan RStudio.

```r
l = 3

P = dexp(x = 10, rate = l)
print(P)

```

![Penyelesaian Soal 5a](https://user-images.githubusercontent.com/54766683/195296358-bf5af04e-fcba-4eb3-8151-2743a645c170.png)


### **Soal 5b**

Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random.

### **Penyelesaian Soal 5b**

Histogram dari Distribusi Exponensial dapat dihasilkan dengan pemanggilan fungsi `hist()` dengan parameter pembangkit Distribusi Exponensial acak `rexp()` untuk `n = 10, 100, 1000, 10000`. Berikut adalah kode dan hasil pengerjaan dari soal 5b menggunakan RStudio.

```r
l = 3

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
par(mfrow=c(2, 2))
```

![Penyelesaian Soal 5b](https://user-images.githubusercontent.com/54766683/195275032-216e25dc-43bd-4df8-84be-08662c3eec29.png)

## **Soal 5c**

Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3.

## **Penyelesaian Soal 5c**

Nilai rataan dari Distribusi Exponensial dapat dicari menggunakan fungsi `mean` dan variannya dengan fungsi `var` pada `rexp()` untuk `n = 100`. Berikut adalah kode dan hasil pengerjaan dari soal 5c menggunakan RStudio.

```r
l = 3
n = 100

set.seed(1)
mean = mean(rexp(n, rate = l))
set.seed(1)
variance = var(rexp(n, rate = l))
print(mean)
print(variance)
```

![Penyelesaian Soal 5c](https://user-images.githubusercontent.com/54766683/195277357-ac6616a1-4329-4ee2-a979-305222a4bed7.png)

# **Soal 6**

> Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8.

### **Soal 6a**

Fungsi Probabilitas dari Distribusi Normal $P(X_1 \le x \le X_2)$, hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik.

### **Penyelesaian Soal 6a**

Dapat diselesaikan dengan fungsi `dnorm()` dengan parameter `n = 100`, `mean = 50`, dan `sd = 8`. Sedangkan nilai Z-Score dapat dicari dengan rumus $z=\frac{x-mean}{sd}$, dengan x1 adalah `floor(mean(rnorm()))` dan x2 adalah `ceiling(mean(rnorm()))`. Berikut adalah kode dan hasil pengerjaan dari soal 6a menggunakan RStudio.

```r
n = 100
mean = 50
sd = 8

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
```

![Penyelesaian Soal 6a](https://user-images.githubusercontent.com/54766683/195306470-59e7a42f-7fff-42f3-8222-514178f159ec.png)

![Penyelesaian Soal 6a](https://user-images.githubusercontent.com/54766683/195306634-c44e2eb6-3b9e-43d3-bd3c-4a6851fab3f5.png)


### **Soal 6b**

Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: 
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

### **Penyelesaian Soal 6b**

Histogram dari Distribusi Normal dapat dihasilkan dengan pemanggilan fungsi `hist()` dengan parameter pembangkit Distribusi Normal acak `rnorm()`. Berikut adalah kode dan hasil pengerjaan dari soal 6b menggunakan RStudio.

```r
n = 100
mean = 50
sd = 8

X = rnorm(n, mean, sd)
hist(X, main = "Histogram Distribusi Normal",
     xlim = c(0, 100),
     breaks = 50,
     col = "lightblue")
```

![Penyelesaian Soal 6b](https://user-images.githubusercontent.com/54766683/195297780-0bb95530-da20-4cd2-a0c4-f2d8b4cdfa43.png)


### **Soal 6c**

Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

### **Penyelesaian Soal 6c**

Nilai rataan dari Distribusi Exponensial dapat dicari menggunakan fungsi `mean` dan variannya dengan fungsi `var` pada `rexp()` untuk `n = 100`. Berikut adalah kode dan hasil pengerjaan dari soal 6c menggunakan RStudio.

```r
n = 100
mean = 50
sd = 8

set.seed(1)
variance = var(rnorm(n, mean, sd))
print(variance)
```

![Penyelesaian Soal 6c](https://user-images.githubusercontent.com/54766683/195288798-fe0bc6ab-59f3-4aa5-a368-8eaa10d3a00c.png)



