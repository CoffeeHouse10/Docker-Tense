# Using slim as this is not for production (slim is good enough for dev)
FROM python:3.12.3-slim 


# Working dir
WORKDIR /app

# Copy the requirements file into the container CURRENTLY SET TO TORCH 
COPY requirements-torch.txt .

# Install the packages 
RUN pip install --no-cache-dir -r requirements-torch.txt
COPY . .

# Non-root for safety
RUN useradd -m appuser
USER appuser

# PASSWORD_HASH should be provided securely at runtime using Docker secrets or environment variables
ENV JUPYTER_PASSWORD_HASH=""

# Start Jupyter with password
CMD ["sh", "-c", "jupyter notebook --ip=0.0.0.0 --no-browser --NotebookApp.password=$JUPYTER_PASSWORD_HASH"]