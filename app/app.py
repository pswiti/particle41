from flask import Flask, request, Response
from datetime import datetime
import json

app = Flask(__name__)

@app.route('/')
def SimpleTimeService():
    # Get the current timestamp
    timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    
    # Get the IP address of the client (visitor)
    ip_address = request.remote_addr
    
    # Create the response dictionary with the desired order
    response = {
        "timestamp": timestamp,
        "ip": ip_address
    }
    
    # Convert the dictionary to JSON string with ordered keys
    response_json = json.dumps(response, indent=4)
    
    # Return a Response object with the JSON string and the correct content type
    return Response(response_json, mimetype='application/json')

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)  # Allow external access
