# Astral-sh-uv-python

Bare bones Alpine with Astral.sh uv Python Package Manager. Everything you need to run any version of Python, any project, any lib in a docker container.

This image is designed to serve as a minimalistic starting point for creating a development Docker container. It is based on Alpine and includes the Astral.sh uv Python Package Manager. The image provides everything necessary to run any version of Python, work on any project, and use any library within a Docker container.# astral-sh-uv-python
Bare bones Alpine with Astral.sh uv Python Package Manager. Everything you need to run any version of Python, any project, any lib in a docker container.

To use the Dockerfile contained in the repository, follow these steps:

1. Clone the repository to your local machine using the following command:

   ```bash
   git clone git@github.com:Bokomoko/astral-sh-uv-python.git <project-name>
   ```

2. Change into the project directory and launch VSCode:

   ```bash
   cd <project-name>
   code .
   ```

3. When you open the project in VSCode, it will automatically detect the Dockerfile and ask to use it to create a development container. The first time it will take a bit longer. After the creation of the image, future projects will start much faster.

A sample devcontainer.json file is provided in the repository. You can modify it to suit your specific needs.

By including this devcontainer.json file in your project, Visual Studio Code will automatically detect and use the Dockerfile to create a development container when you open the project in the IDE.

In the example provided, if you want to change the list of extensions, you can do so directly within the "extensions" key in the devcontainer.json file. Simply update the list of extensions to include or exclude the desired ones.

## What to do after the container is created

The idea is to start creating things with Python using the uv package manager. So the first thing is to decide which version of Python you want to use. Let's say you want to use Python 3.12, so the uv command would be:

```bash
uv install python@3.12
```

This will install the latest version of Python 3.12.

Once you have installed the desired version of Python, you can start creating your project. You can create a new project using the following command:

```bash
uv init <project-name>
```

This will create a new folder/directory for the project with the specified name. You can then start working on your project by adding your code and dependencies to the project. First change to the project directory and then run the following command:

```bash
cd <project-name>
```

Now let's add some dependencies to the project. Let's say you want to use the FastAPI backend framework. Let's use the uvicorn asyncio server. You can add it to the project using the following command:

```bash
uv add fastapi uvicorn
```

Now let's create a very simple FastAPI backend. Create a file called main.py in the project directory and add the following code:

```python
from fastapi import FastAPI
app = FastAPI()
@app.get("/")
async def root():
   return {"message": "Hello World"}

```

Now let's run the backend using the following uv command:

```bash
uv run uvicorn main:app --reload
```

This will start the backend server on port 8000. You can access the backend by opening a web browser and navigating to http://localhost:8000. You should see the message "Hello World" displayed on the page.

That's it! You have now created a simple FastAPI backend using the Astral.sh uv Python Package Manager. You can continue to add more dependencies and features to your project as needed.

## Pull requests are  welcome. For major changes, please open an issue first to discuss what you would like to change.



