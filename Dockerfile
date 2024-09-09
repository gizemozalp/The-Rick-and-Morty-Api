# Base image olarak Node.js seç
FROM node:18

# Çalışma dizinini oluştur
WORKDIR /app

# package.json ve package-lock.json dosyalarını kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install

# Uygulama dosyalarını kopyala
COPY . .

# Uygulamayı derle (bu adım React uygulaman için gerekli olabilir)
RUN npm run build

# Uygulamayı çalıştır
CMD ["npm", "start"]

# Uygulama portunu tanımla
EXPOSE 3000
