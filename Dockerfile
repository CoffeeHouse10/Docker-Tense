# Use the 3.12.3 base
FROM python:3.12.3-slim

# Working dir
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the packages from the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your project's files into the container
COPY . .

# Optional: Command to run your application when the container starts
#CMD ["python", "your_main_script.py"]