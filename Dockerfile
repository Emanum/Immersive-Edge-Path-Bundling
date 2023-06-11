FROM nginx
COPY examples/ /usr/share/nginx/html
# Overwrite the symlinked js files with the actual files
COPY three-forcegraph-edge-path-bundling/dist/three-forcegraph.js /usr/share/nginx/html/js/three-forcegraph.js
COPY aframe-forcegraph-component-edge-path-bundling/dist/aframe-forcegraph-component.min.js  /usr/share/nginx/html/js/aframe-forcegraph-component.min.js