# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Set basic authentication for security
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=yourusername
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword

# Set Webhook Tunnel URL (change it to your Render app URL)
ENV WEBHOOK_TUNNEL_URL=https://your-app-name.onrender.com

# Expose the n8n default port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
