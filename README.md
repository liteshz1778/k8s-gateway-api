# k8s-gateway-api
This repo contains k8s Manifests related to gateway-api


# Build, Deployed & Accessed Book Store Application using docker, k8s-deployment, k8s-gateway-api:

## Application Flow:
**Client → Envoy Gateway → HTTPRoute → Service → Application Pod**

## Directory Structure:

books-store-app
│
├── Gateway API Layer
│ ├── GatewayClass
│ └── Gateway
│
├── Routing Layer
│ ├── iphone HTTPRoute
│ ├── android HTTPRoute
│ └── desktop HTTPRoute
│
├── Application Layer
│ ├── iPhone Users Application
│ ├── Android Users Application
│ └── Desktop Users Application
│
└── Deployment Automation
└── run-book-store-app.sh
