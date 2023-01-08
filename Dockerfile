#Use the python:3.10-bullseye as the base image to build our new image
#You can find many others python images at the DockerHub
#I choosed this image because it feet with my python version (3.10.6) and OS distribution (Linux-Ubuntu). 
FROM python:3.10-bullseye 

#Set the directory that out commands are gonna be executed
WORKDIR /app

#Copy the requirements file in the directory
COPY requirements.txt .

#Run the pip to install all the dependencies at the requirements file
#These commands run before the application starts
RUN pip install -r requirements.txt

#Use the port 5000 by default because the Flask works ate this port
EXPOSE 5000

#Creating a env_var to use the Flash debug mode
ENV FLASK_ENV development

#Just copy the application to the directory /app in the container
COPY app.py .

#These commands are used to run the application
#Using the 0.0.0.0 ip to set the container adress to be used, not your localhost
CMD ["flask", "run", "--host", "0.0.0.0"]
