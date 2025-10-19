# استخدم نسخة Node مناسبة
FROM node:18-alpine

# أنشئ مجلد داخل الحاوية
WORKDIR /app

# انسخ ملفات المشروع
COPY package*.json ./
RUN npm install

COPY . .

# Back4App بيستخدم متغير PORT تلقائيًا
ARG PORT=8055
ENV PORT=$PORT
EXPOSE $PORT

# شغّل Directus
CMD ["npx", "directus", "start"]
