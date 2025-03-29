from flask import Flask, request, jsonify
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def SimpleTimeService():
    # Get the current timestamp
    timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    
    # Get the IP address of the client (visitor)
    ip_address = request.remote_addr
    
    # Create the response dictionary
    response = {
        "timestamp": timestamp,
        "ip": ip_address
    }
    
    # Return the response as JSON
    return jsonify(response)

if __name__ == '__main__':
    app.run(debug=True)
