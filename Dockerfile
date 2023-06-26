# Use the official Python base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app



# Install the Python dependencies
RUN pip install  flask

# Copy the Flask app code to the working directory
COPY . .

# Expose the port that the Flask app will listen on
EXPOSE 5000

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]
