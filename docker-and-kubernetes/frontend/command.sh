# Install npm create-react-app
npm install -g create-react-app
create-react-app frontend

# Test
npm run test

# Build
npm run build

# Run
npm run start

# Dev Dockerfile
docker build -t jieqiong/react-docker-app -f Dockerfile.dev .

# 69. Docker Volumes
# pwd [path/to/frontend]
# -v is for volume
docker run -p 3000:3000 -v $(pwd):/app jieqiong/react-docker-app

# 71. Shorthand with Docker Compose 
# docker-compose.yml
# 72. Overriding Dockerfile Selection