# Postgre-Neo4j

# Masuk ke postgre
```
sudo -u postgres -i
```
<img width="247" alt="image" src="https://github.com/Digital-Data-Integrasi/Postgre-Neo4j/assets/143582498/7c01917d-2b07-4fea-92d1-42894061acbb">

# Akses User postgre
```
psql
```
<img width="259" alt="image" src="https://github.com/Digital-Data-Integrasi/Postgre-Neo4j/assets/143582498/ff4e57c7-b38f-48ad-8bff-5391ac80fcc9">

# Buat table di postgre (Script ada di data.sql)
## Cek table yang telah dibuat
```
\dt
```
<img width="247" alt="image" src="https://github.com/Digital-Data-Integrasi/Postgre-Neo4j/assets/143582498/3bf52ea4-f404-4051-aa6d-dd80d6fe99f0"> 

jika ada table family dan person, lanjut langkah selanjutnya

# Buat connector postgres-kafka.sh (Script ada postgres-kafka.sh)
```
nano postgres-kafka.sh
```
<img width="679" alt="image" src="https://github.com/Digital-Data-Integrasi/Postgre-Neo4j/assets/143582498/5d36ce44-bde9-478f-80df-a53e5d9a6af6">

# Jalankan connector postgres-kafka.sh
```
sh postgres-kafka.sh
```
<img width="935" alt="image" src="https://github.com/Digital-Data-Integrasi/Postgre-Neo4j/assets/143582498/b70b698b-73ad-4f78-b222-b6e4cbc22a28">
