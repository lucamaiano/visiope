FROM python:3.12

# Set the working directory
WORKDIR .

# System updates and install
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

# Install requirements
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the files
COPY . .