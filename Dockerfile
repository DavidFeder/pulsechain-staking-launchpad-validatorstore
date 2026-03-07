# Dockerfile - PulseChain Validator Staking Launchpad
# Uses official lightweight nginx (only ~10MB)

FROM nginx:alpine

# Copy all our project files into nginx's web folder
COPY index.html /usr/share/nginx/html/
COPY ethers.umd.min.js /usr/share/nginx/html/
COPY LogoTransparent.png /usr/share/nginx/html/

# Expose port 80 (standard web port)
EXPOSE 80

# Health check so Docker knows it's ready
HEALTHCHECK CMD wget --no-verbose --tries=1 --spider http://localhost || exit 1