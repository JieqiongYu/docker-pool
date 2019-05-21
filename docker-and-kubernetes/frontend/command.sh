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

# 76. Docker Compose for Running Tests
docker-compose up --build

## 80. Implementing Multi-Step Builds
build -t jieqiong/multi-steps-front .
docker run -p 8080:80 jieqiong/multi-steps-front 