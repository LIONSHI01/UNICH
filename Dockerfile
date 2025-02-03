FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy requirements.txt to the working directory
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Command to run the application
CMD ["python", "main.py"]
