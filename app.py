from flask import Flask, jsonify

app = Flask(__name__)

@app.get("/")
def home():
    return "Hello from Flask"

@app.get("/health")
def health():
    return jsonify(status="ok"), 200

if __name__ == "__main__":
    # ל-local run בלבד; בדוקר נריץ דרך gunicorn
    app.run(host="0.0.0.0", port=5000)
