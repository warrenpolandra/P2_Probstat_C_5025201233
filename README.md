# Praktikum 2 Probabilitas dan Statistika
Warren Gerald Polandra

NRP 5025201233

Probabilitas dan Statistika C

## Nomor 1
Data dimasukkan ke dalam vector x dan y

x = Sebelum melakukan aktivitas A

y = Setelah melakukan aktivitas A

### a. Standar Deviasi
`z` adalah selisih pasangan pengamatan, kemudian menggunakan fungsi `sd()` untuk mencari standar deviasi

![1a](https://cdn.discordapp.com/attachments/856609726225973278/980484117139431424/unknown.png)

### b. t (p-value)
`zbar` adalah rata-rata dan `n` adalah panjang data

rumus dari t-value adalah `zbar/(stdev/sqrt(n))`

p-value dapat dicari dengan cara `2*pt(tvalue,df=n-1)`, perhitungan bersifat two-way

![1b](https://cdn.discordapp.com/attachments/856609726225973278/980486832229867550/unknown.png)

### c. Kesimpulan

`alpha` adalah tingkat signifikansi dengan nilai 5% == 0.05

jika p-value <= alpha, maka tolak H0

jika tidak, maka gagal tolah H0

![1c](https://cdn.discordapp.com/attachments/856609726225973278/980487599712010260/unknown.png)

H0 = tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A

H1 = ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A

## Nomor 2
Menggunakan library BSDA untuk `zsum.test()` dengan parameter:
- mean.x=23500
- sigma.x=3900
- n.x=100
- alternative = "greater"
- mu=20000
- conf.level=0.95

![2](https://cdn.discordapp.com/attachments/856609726225973278/980489009610518528/unknown.png)

### a. Klaim
Setuju karena `pvalue < alpha` maka tolak H0 dimana `rata rata mobil < 20000`

### b. Penjelasan output
nilai `z = 8.9744`, sedangkan `pvalue < 2.2e-16`. pvalue pasti bernilai sangat kecil dan sudah pasti lebih kecil dari nilai `alpha 0.05`

### c. Kesimpulan
`pvalue < 2.2e-16`, maka `"tolak h0"` karena `pvalue < alpha 0.05`

## Nomor 3
Variabel yang digunakan:
- `n1 = 19`: Jumlah saham Bandung
- `xbar1 = 3.64`: Sample mean Bandung
- `s1 = 1.67`: Sample standar deviasi Bandung
- `n2 = 27`: Jumlah saham Bali
- `xbar2 = 2.79`: Sample mean Bali
- `s2 = 1.32`: Sample standar deviasi Bali

### a. H0 dan H1
H0: mu1 = mu2 -> rata-rata saham Bandung sama dengan rata-rata saham Bali

H1: mu1 <> mu2 -> rata-rata saham Bandung berbeda dengan rata-rata saham Bali

### b. Sampel Statistik
Menggunakan fungsi `tsum.test()` dengan parameter `(xbar1, s1, n1, xbar2, s2, n2, alternative = "greater", 
          mu = 0, var.equal = TRUE, conf.level = 0.95)`

![3b](https://cdn.discordapp.com/attachments/856609726225973278/980493783638638612/unknown.png)

### c. Uji Statistik (df =2)
Rumus uji statistik dengan df = 2:

(xbar1-xbar2)/sqrt(((s1<sup>2</sup>)/n1)+((s2<sup>2</sup>)/n2))

![3c](https://cdn.discordapp.com/attachments/856609726225973278/980494355968184390/unknown.png)

### d. Nilai Kritikal
`alpha = 0.05` diketahui dari soal

`z_half_alpha` dicari dengan fungsi `qnorm()` dengan parameter `(1-(alpha/2))`

Kemudian nilai kritikal dapat dicari dengan parameter `(+z_half_alpha, -z_half_alpha)`

![3d](https://cdn.discordapp.com/attachments/856609726225973278/980495373338546196/unknown.png)

### e. Keputusan
tolak H0 jika `zvalue > z_half_alpha` atau jika `-zvalue < -z_half_alpha`

![3e](https://cdn.discordapp.com/attachments/856609726225973278/980496618384150578/unknown.png)

### f. Kesimpulan
karena hasil yang didapatkan adalah "gagal tolak H0" maka mu1 = mu2 dan tidak ada perbedaan pada rata-rata antara Bandung dan Bali, artinya rata-rata saham Bandung sama dengan rata-rata saham Bali

## Nomor 4

## Nomor 5
