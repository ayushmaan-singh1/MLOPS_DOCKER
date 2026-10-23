# Use offical python image
FROM python:3.13-slim


#Set working dir where everything will be copied and run
WORKDIR /app


#copy everything from current to /app(Work-dir)
COPY . /app


#Run the required command to install dependencies
RUN pip install --no-cache-dir -r requirements.txt


#Expose container port 
EXPOSE 5000


#Set environment variable
ENV FLASH_APP=app.py


#Command which should automatically run after container start
CMD ["flask", "run", "--host=0.0.0.0"]