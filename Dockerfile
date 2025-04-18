# ---- Stage 1: Build mit Node ----
    FROM node:18-alpine AS build

    WORKDIR /app
    
    # Nur package*.json kopieren und Abhängigkeiten installieren
    COPY package*.json ./
    RUN npm install
    
    # Quellcode kopieren und Produktions-Build
    COPY . .
    RUN npm run build
    
    # ---- Stage 2: Auslieferung via Nginx ----
    FROM nginx:alpine
    
    # Standardmäßig lauscht Nginx auf Port 80
    EXPOSE 4173
    
    # Kopiere fertiges /dist aus Stage 1 in das Standardverzeichnis von Nginx
    COPY --from=build /app/dist /usr/share/nginx/html
