# Using slim as this is not for production
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

# Set password (generate your own hash)
ENV JUPYTER_PASSWORD="sha1:yourhashedpasswordhere"

# Runs Jupyter Notebook when it starts
CMD ["jupyter", "notebook", "--ip=127.0.0.1", "--no-browser"]