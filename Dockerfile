FROM nvcr.io/nvidia/pytorch:25.08-py3


# Working dir
WORKDIR /app

# Copy the requirements file into the container CURRENTLY SET TO TORCH 
COPY requirements-torch.txt .

# Install the packages 
RUN pip install --no-cache-dir -r requirements-torch.txt
COPY . .

# Non-root for more safety if you want it
# RUN useradd -m appuser
# USER appuser

COPY start-jupyter.sh /start-jupyter.sh
RUN chmod +x /start-jupyter.sh

# JUPYTER_PASSWORD_HASH should be provided securely at runtime using Docker secrets or environment variables (.env file)
ENV JUPYTER_PASSWORD_HASH=""

# Start Jupyter with password
CMD ["/start-jupyter.sh"]