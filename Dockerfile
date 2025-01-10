FROM ghcr.io/soulteary/cronicle:latest

# Install Curl and Deno
RUN apk add --no-cache deno

# Install pnpm
RUN wget -qO- https://get.pnpm.io/install.sh | ENV="$HOME/.shrc" SHELL="$(which sh)" sh - && \
    echo 'export PATH="/root/.local/share/pnpm:$PATH"' >> ~/.shrc

# Set the PATH globally for subsequent layers
ENV PATH="/root/.local/share/pnpm:$PATH"