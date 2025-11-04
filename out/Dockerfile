# Generated Dockerfile - minimal, non-root
FROM alpine:3.18

# add a non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

# install small utilities (bash for scripts that use bash features; remove if not needed)
RUN apk add --no-cache bash tar

# copy app files
COPY backup.sh /app/backup.sh
RUN chmod +x /app/backup.sh
RUN chown -R appuser:appgroup /app

USER appuser

ENTRYPOINT ["/bin/bash", "/app/backup.sh"]
