**Minimalist Application Development / Docker / Kubernetes**
**Tiny App Development: 'SimpleTimeService'**
##Install Flask: First, make sure you have Flask installed. You can install it using pip if you don't have it yet:
pip install flask

##Create the Python file (app.py):
##Run the application: In the terminal, run the application by executing:
python app.py

##Testing: Once the server is running, you can visit http://127.0.0.1:5000/ in your browser or use a tool like curl to see the JSON response:
curl http://127.0.0.1:5000/
##You should receive a response like:

{
  "timestamp": "<current date and time>",
  "ip": "<the IP address of the visitor>"
}

{
  "timestamp": "2025-03-28 15:30:45",
  "ip": "127.0.0.1"
}


**Dockerize SimpleTimeService**
Create a Dockerfile for the Flask application.
You need to create a requirements.txt file to list the dependencies of the Flask application. 
Build and Run the Docker Container
docker build -t SimpleTimeService .
docker run -p 5000:5000 SimpleTimeService
Check it browser http://localhost:5000

Verifying the Non-root User
docker exec -it <container_id> whoami

**Build SimpleTimeService image**
Log In to DockerHub from the Command Line
docker login
Tag Your Docker Image
docker tag simple-service yourusername/simple-service:latest
Push the Docker Image to DockerHub
docker push yourusername/simple-service:latest
Verify the Image on DockerHub

