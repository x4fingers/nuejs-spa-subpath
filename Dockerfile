FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*
COPY .dist/prod /usr/share/nginx/html
EXPOSE 80

# Start Nginx when the container has provisioned
CMD ["nginx", "-g", "daemon off;"]
