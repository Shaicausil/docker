# Usa una imagen base de Node.js
FROM node:18-alpine

# Crea un directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia el archivo `package.json` y `package-lock.json` (si existe) al contenedor
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia todo el código fuente de la API al contenedor
COPY . .

# Expone el puerto que la API va a usar (ajusta si tu API usa otro puerto)
EXPOSE 5000

# Define el comando para arrancar la API
CMD ["npm", "run", "dev"]
