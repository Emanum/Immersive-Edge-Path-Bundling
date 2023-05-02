# Immersive-Edge-Path-Bundling

## Idea

The idea of this project is to implement the edge path algorithm in 3D and render with A-Frame in VR.
The paper that introduced this algorithm is [Edge-Path Bundling: A Less Ambiguous Edge Bundling Approach](https://arxiv.org/abs/2108.05467)

There is a [demo](https://immersive-edge-path.emanum.dev/) available.

## Architecture

There are two main components in this project

### three-forcegraph-edge-path-bundling

This is the base implementation of a three.js module that renders a force-directed graph. It is forked from [three-forcegraph](https://github.com/vasturiano/three-forcegraph). 
In addition, we added the edge path bundling algorithm in 3D to the module.

The main changes are in 
`three-forcegraph-edge-path-bundling/src/forcegraph-kapsule.js`

### aframe-forcegraph-component-edge-path-bundling

This is an A-Frame component that uses the three-forcegraph-edge-path-bundling module to render a force-directed graph in A-Frame. It is forked from [aframe-forcegraph-component](https://github.com/vasturiano/aframe-forcegraph-component)

By using our previous three.js module we were able to render our edge path bundling algorithm in A-Frame.

### Other modules

There are multiple modules from the original author, [Vasco Asturiano](https://github.com/vasturiano), that build up on each other.
An overview of the modules can be found [here](https://vasturiano.github.io/react-force-graph/example/forcegraph-dependencies/).

## How to run 


### Install dependencies

In the three-forcegraph-edge-path-bundling folder run:

```
yarn install
yarn link
```

In the aframe-forcegraph-component-edge-path-bundling folder run:

```
yarn link three-forcegraph
yarn install
```

### Run three-forcegraph-edge-path-bundling

In the `three-forcegraph-edge-path-bundling` folder run:

```
yarn run dev
```

Then open `./examples/3d/basic/index.html` via a web server see [Open files in a webserver](#open-files-in-a-webserver)

### Run aframe-forcegraph-component-edge-path-bundling

In the `three-forcegraph-edge-path-bundling` folder run:

```
yarn run build
```

In the `aframe-forcegraph-component-edge-path-bundling` folder run:

```
yarn run dist
```

Then open `./examples/vr/basic/index.html` via a web server see [Open files in a webserver](#open-files-in-a-webserver)


### Open files in a webserver
For example with intellij you can right-click on the file and select `Open in Browser`. Or in VSCode you can install the `Live Server` extension and right-click on the file and select `Open with Live Server`.
Another way is to run `python -m http.server` in the folder where the file is located and then open `localhost:8000` in your browser.

### Host an HTTPS server for VR
WebXR requires HTTPS. You can use [ngrok](https://ngrok.com/) to host a local server on the internet via https. 

1. Start a local server on port 8000 (or any other port) with `python -m http.server 8000`
2. Start ngrok with `ngrok http 8000`
3. Copy the https url from ngrok and open it in your browser on Oculust Quest or other VR device

# FAQ


## Cors error on intellij webserver while debugging

If you encounter this error while debugging in intellij:
```
Access to script at 'http://unpkg.com/three/examples/jsm/controls/TrackballControls.js' from origin 'http://localhost:63342' has been blocked by CORS policy: Response to preflight request doesn't pass access control check: Redirect is not allowed for a preflight request.
```

When debugging, the x-ijt header is sent for request signing to prevent requests from outside from being rejected; header is not sent if Allow unsigned requests in Settings | Build, Execution, Deployment | Debugger is enabled, so, if you are facing issues because of this header, you have to turn this option on

found on https://intellij-support.jetbrains.com/hc/en-us/community/posts/4407891226898-CORS-policy-error


# Build docker files

docker build -t emanum/immersive-edge-path-bundling-demo:latest .
docker push emanum/immersive-edge-path-bundling-demo:latest