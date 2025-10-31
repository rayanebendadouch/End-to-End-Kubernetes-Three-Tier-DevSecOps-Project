# Copy dependency files and install
FROM node:20-alpine

# Set working directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# Copy application source
COPY . .

# Create non-root user with specific UID/GID (1000)
RUN addgroup appgroup && adduser -G appgroup -D appuser

RUN mkdir /log
# Fix ownership for app directory
RUN chown -R appuser:appgroup /usr/src/app
# Switch to non-root user
USER appuser

# Set environment
#ENV NODE_ENV=production

# Expose app port
EXPOSE 3500

# Use read-only filesystem (enforced in K8s)
CMD ["node", "index.js"]