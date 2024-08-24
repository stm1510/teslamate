# Base image
FROM elixir:1.12.3-alpine

# Set environment variables
ENV MIX_ENV=prod \
    LANG=C.UTF-8

# Install dependencies
RUN apk add --no-cache \
    build-base \
    git \
    nodejs \
    npm \
    postgresql-client \
    tzdata

# Install Hex + Rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Create and set working directory
WORKDIR /app

# Copy the application code
COPY . .

# Install Elixir dependencies
RUN mix deps.get --only prod && \
    mix deps.compile

# Build the release
RUN npm install --prefix ./assets && \
    npm run deploy --prefix ./assets && \
    mix phx.digest && \
    mix release

# Run the Phoenix server
CMD ["_build/prod/rel/teslamate/bin/teslamate", "start"]
