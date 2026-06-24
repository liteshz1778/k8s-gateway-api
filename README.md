# k8s-gateway-api
This repo contains k8s Manifests related to gateway-api


# Build, Deployed & Accessed Book Store Application using docker, k8s-deployment, k8s-gateway-api:

## Application Flow:
```text
                     Client Request
                           |
                           |
                    Envoy Gateway
                           |
                    Gateway Listener
                       HTTP : 80
                           |
              +------------+-------------+
              |            |             |
          /iphone      /android      /desktop
              |            |             |
              v            v             v
        iphone-svc   android-svc   desktop-svc
              |            |             |
              v            v             v
        iPhone Pod   Android Pod   Desktop Pod

## Directory Structure:

```text
books-store-app/
│
├── Gateway API Layer
│
│   ├── gateway-class-definition.yml
│   │   └── Defines Envoy GatewayClass
│   │
│   └── gateway-definition.yml
│       └── Creates Gateway Listener (HTTP:80)
│
├── Routing Layer (HTTPRoute)
│
│   ├── iphone-http-route-definition.yml
│   │   └── Routes /iphone traffic
│   │
│   ├── android-http-route-definition.yml
│   │   └── Routes /android traffic
│   │
│   └── desktop-http-route-definition.yml
│       └── Routes /desktop traffic
│
├── Application Layer
│
│   ├── iphone_users.yml
│   │   └── iPhone Users Deployment + Service
│   │
│   ├── android_users.yaml
│   │   └── Android Users Deployment + Service
│   │
│   └── desktop_users.yml
│       └── Desktop Users Deployment + Service
│
└── Automation
    │
    └── run-book-store-app.sh
        └── Deploys complete application stack
