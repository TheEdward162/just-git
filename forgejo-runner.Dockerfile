ARG BASE_OS=trixie-slim
FROM debian:$BASE_OS

RUN <<EOF
	set -e
	apt-get update
	apt-get install -y --no-install-recommends nodejs docker-cli ca-certificates
	rm -rf /var/lib/apt/lists/*
EOF
