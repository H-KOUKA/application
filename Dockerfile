FROM ubuntu:22.04

# Install Python
RUN apt-get -y update && \
    apt-get install -y python3-pip curl

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin/:$PATH"

# Install project dependencies
COPY pyproject.toml .
RUN uv sync

<<<<<<< HEAD
COPY train.py .
COPY src ./src
CMD ["uv", "run", "train.py"]
=======
COPY main.py .
COPY src ./src
CMD ["uv", "run", "main.py"]
>>>>>>> 34e7f9a5ad6e5a18741c472da5d950b0f6ddac11
