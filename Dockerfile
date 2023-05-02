FROM nginx
COPY examples/ /usr/share/nginx/html/examples
COPY three-forcegraph-edge-path-bundling/dist/three-forcegraph.js /usr/share/nginx/html/three-forcegraph-edge-path-bundling/dist/three-forcegraph.js
COPY aframe-forcegraph-component-edge-path-bundling/dist/aframe-forcegraph-component.min.js  /usr/share/nginx/html/examples/vr/basic/aframe-forcegraph-component.min.js
COPY examples/index.html /usr/share/nginx/html/index.html
