# Use an official Python runtime as a parent image
FROM python:3.7.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application files into the container
COPY . /app

# Make your_script_name.py executable if needed
# RUN chmod +x your_script_name.py

# Run your script when the container launches
CMD ["python", "main.py"]