#https://github.com/yudarahmasisfo/praktekcloud1

# Buat direktori sementara agar tidak butuh root
RUN mkdir -p /tmp/nginx/logs /tmp/nginx/client-body /tmp/nginx/proxy \
/tmp/nginx/run /tmp/nginx/fastcgi /tmp/nginx/uwsgi /tmp/nginx/scgi

# Berikan kepemilikan direktori kepada user 1000
RUN chown -R 1000:1000 /tmp/nginx/

# Copy website
COPY app /app
