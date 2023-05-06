# Menggunakan base image Node.js versi 14, saya menggunakan versi alpine agar image tidak terlalu besar
FROM node:14.5.0-alpine

# Menentukan working directory untuk container
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . /app

# Menentukan environment variable untuk aplikasi
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port yang digunakan oleh aplikasi
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm", "start"]
