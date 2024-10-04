"""
Sample for a todo using Mongo, FastAPI and React. THis is the backend

"""

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    """root access to the services"""
    return {"status": "ok"}
