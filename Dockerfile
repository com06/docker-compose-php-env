# ใช้ image พื้นฐาน PHP 8.0 พร้อม Apache
FROM php:8.0-apache

# ติดตั้งและเปิดใช้งานส่วนขยาย mysqli สำหรับ PHP
# เพื่อให้ PHP สามารถเชื่อมต่อกับฐานข้อมูล MySQL ได้
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# อัปเดตรายการแพ็กเกจและอัปเกรดแพ็กเกจที่ติดตั้งไว้
# ในระบบปฏิบัติการของคอนเทนเนอร์ (Debian/Ubuntu)
RUN apt-get update && apt-get upgrade -y