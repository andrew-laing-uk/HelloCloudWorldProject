from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Well, hello there! You have found an Andrew page :)'


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
