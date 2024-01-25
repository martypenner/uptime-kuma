# syntax=docker/dockerfile:1.4

FROM louislam/uptime-kuma:1

ENV DEBIAN_FRONTEND=noninteractive
ENV TAILSCALED_TUN=userspace-networking

WORKDIR /app

RUN curl -fsSL https://tailscale.com/install.sh | sh
COPY entrypoint.sh /app/

CMD ["/app/entrypoint.sh"]

