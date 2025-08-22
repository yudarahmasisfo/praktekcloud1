# Gunakan image nginx yang sudah siap pakai
FROM nginx:alpine

# Copy file website ke folder default Nginx
COPY app /usr/share/nginx/html

# Ubah config default: dari port 80 → 7860 (biar sesuai Hugging Face Spaces)
RUN sed -i 's/listen       80;/listen 7860;/' /etc/nginx/conf.d/default.conf

# Expose port 7860
EXPOSE 7860

# Jalankan nginx di foreground
CMD ["nginx", "-g", "daemon off;"]
