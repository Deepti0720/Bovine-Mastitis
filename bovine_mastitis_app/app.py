import joblib
import numpy as np
from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel

# Load trained Random Forest model
MODEL_PATH = "mastitis_model.pkl"

try:
    model = joblib.load(MODEL_PATH)
except Exception as e:
    raise RuntimeError(f"Failed to load model from {MODEL_PATH}: {str(e)}")

app = FastAPI(title="Bovine Mastitis Risk Prediction API")

# Enable CORS for Flutter app communication
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

class HealthDataInput(BaseModel):
    electrical_conductivity: float
    milk_temperature: float
    yield_liters: float

@app.get("/")
def health_check():
    return {"status": "ok", "message": "Bovine Mastitis Risk Service is running."}

@app.post("/predict")
def predict_mastitis_risk(data: HealthDataInput):
    try:
        # Extract features matching model training order
        features = np.array([[
            data.electrical_conductivity,
            data.milk_temperature,
            data.yield_liters
        ]])

        # Execute prediction
        prediction = int(model.predict(features)[0])

        if prediction == 1:
            return {
                "prediction": 1,
                "risk": "mastitis_risk",
                "message": "Mastitis risk detected"
            }
        else:
            return {
                "prediction": 0,
                "risk": "low",
                "message": "Low mastitis risk"
            }

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))