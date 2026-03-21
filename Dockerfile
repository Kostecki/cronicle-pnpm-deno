FROM ghcr.io/cronicle-edge/cronicle-edge:latest

# Install Node
RUN apk add --no-cache nodejs npm

# Install pnpm and tsx
RUN npm install -g pnpm tsx

# Keep deno
RUN apk add --no-cache deno

WORKDIR /scripts