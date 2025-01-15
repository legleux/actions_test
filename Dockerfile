FROM debian:trixie-slim
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
WORKDIR /app
COPY . .
RUN uv venv
EXPOSE 5000
CMD ["uv", "run", "app.py"]
