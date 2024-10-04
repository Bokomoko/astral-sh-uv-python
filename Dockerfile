# This image is designed to serve as a minimalistic starting point for creating a development Docker container. It is based on Alpine and includes the Astral.sh uv Python Package Manager. The image provides everything necessary to run any version of Python, work on any project, and use any library within a Docker container.# astral-sh-uv-python
# Bare bones Alpine with Astral.sh uv Python Package Manager. Everything you need to run any version of Python, any project, any lib in a docker container.
FROM mcr.microsoft.com/devcontainers/base:alpine-3.20

# Install curl if not already present
RUN apk add --no-cache curl

# Install uv directly from creators site
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# to initialize a project create a folder/directory and use uv init
# for more information on how to use uv please refer to creators site https://astra.sh/uv

