FROM ghcr.io/soulteary/cronicle:latest

# Install dependencies
RUN apk add --no-cache curl bash deno

# Install Volta
ENV VOLTA_HOME="/root/.volta"
ENV PATH="$VOLTA_HOME/bin:$PATH"

RUN curl https://get.volta.sh | bash

# Install pnpm via Volta
RUN volta install node@22 && volta install pnpm

# Optional: install tsx globally
RUN volta install tsx
