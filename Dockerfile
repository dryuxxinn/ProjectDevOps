
# Menggunakan base image Nginx yang ringan
FROM nginx:alpine

# Menyalin seluruh file dari direktori lokal (index.html, style.css, script.js)
# ke dalam direktori default Nginx untuk menyajikan konten web
COPY . /usr/share/nginx/html

# Memberi tahu Docker bahwa container akan menggunakan port 80 saat dijalankan
EXPOSE 80
