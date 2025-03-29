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
