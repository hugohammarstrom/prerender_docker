FROM zenika/alpine-chrome

COPY package.json package.json  
RUN npm install

# Add your source files
COPY . .  
EXPOSE 3000
ENTRYPOINT [ "node", "./server"]