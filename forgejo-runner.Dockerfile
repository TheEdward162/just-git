ARG BASE_OS=trixie-slim
FROM debian:$BASE_OS

RUN <<EOF
	set -e
	apt-get update
	apt-get install -y --no-install-recommends ca-certificates nodejs docker-cli docker-buildx
	rm -rf /var/lib/apt/lists/*
EOF
