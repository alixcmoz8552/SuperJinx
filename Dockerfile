# استفاده از نسخه سبک Node.js
FROM node:18-alpine

# تعیین پوشه کاری داخل کانتینر
WORKDIR /app

# کپی کردن فایل‌های وابستگی
COPY package*.json ./

# نصب پکیج‌ها
RUN npm install

# کپی کردن بقیه فایل‌های پروژه
COPY . .

# تعیین پورت ۳۰۰۰
ENV PORT=3000
EXPOSE 3000

# دستور اجرای برنامه
CMD ["npm", "start"]
