FROM node:14
#Menggunakan base image Node.js versi 14

WORKDIR /app
#Menentukan bahwa working directory untuk container adalah /app

COPY . .
#menyalin seluruh source code ke working directory di container

ENV NODE_ENV=production DB_HOST=item-db
#Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host

RUN npm install --production --unsafe-perm && npm run build
#Menginstall dependencies untuk production dan kemudian build aplikasi

EXPOSE 8080
#Mengekspose bahwa port yang digunakan oleh aplikasi adalah 8080

CMD [ "npm", "start" ]
#Saat container diluncurkan, jalankan server dengan perintah npm start