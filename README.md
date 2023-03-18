# Immersive-Edge-Path-Bundling

## Idea

The idea of this project is to implement the edge path algorithm in 3D and render with A-Frame in VR.
The paper that introduced this algorithm is [Edge-Path Bundling: A Less Ambiguous Edge Bundling Approach](https://arxiv.org/abs/2108.05467)


## Architecture

There are two main components in this project

### three-forcegraph-edge-path-bundling

This is the base implementation of a three.js module that renders a force-directed graph. It is forked from [three-forcegraph](https://github.com/vasturiano/three-forcegraph). 
In addition, we added the edge path bundling algorithm in 3D to the module. 

### aframe-forcegraph-component-edge-path-bundling

This is an A-Frame component that uses the three-forcegraph-edge-path-bundling module to render a force-directed graph in A-Frame. It is forked from [aframe-forcegraph-component](https://github.com/vasturiano/aframe-forcegraph-component)

By using our previous three.js module we were able to render our edge path bundling algorithm in A-Frame.

### Other modules

There are multiple modules from the original author, [Vasco Asturiano](https://github.com/vasturiano), that build up on each other.
An overview of the modules can be found [here](https://vasturiano.github.io/react-force-graph/example/forcegraph-dependencies/).

## How to run
