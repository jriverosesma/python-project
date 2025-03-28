FROM debian:stable

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Install Miniconda
RUN curl -sL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh && \
    bash miniconda.sh -b -p /opt/conda && \
    rm miniconda.sh && \
    /opt/conda/bin/conda clean -afy

# Set Conda path
ENV PATH="/opt/conda/bin:$PATH"

# Create Conda env
RUN conda create -y -n my-package python=3.10 --no-default-packages && \
    /opt/conda/envs/my-package/bin/pip install --upgrade pip

# Install package and pre-commit
RUN /opt/conda/envs/my-package/bin/pip install -e .[all] && \
    /opt/conda/envs/my-package/bin/pre-commit install

# Activate conda env and run your script
CMD ["/opt/conda/envs/my-package/bin/my_package_script"]
