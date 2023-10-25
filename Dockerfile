FROM nginx:latest
RUN echo hello.js > "I am Cishy"
COPY index.html /usr/share/nginx/html
RUN echo '构建完成🎉'
