# The 2ls.tech image: a bare nginx serving the site under public/. No build
# step — the files ARE the artifact.
FROM nginx:1.27-alpine

# Replace the stock server block with ours (gzip, /healthz, no-cache HTML).
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Drop the base image's stock index.html/50x.html.
RUN rm -rf /usr/share/nginx/html/*

# The site. Everything under public/ is served at the site root.
COPY public/ /usr/share/nginx/html/

EXPOSE 80
