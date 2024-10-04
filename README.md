# astral-sh-uv-python
Bare bones Alpine with Astral.sh uv Python Package Manager. Everything you need to run any version of Python, any project, any lib in a docker container.

This image is designed to serve as a minimalistic starting point for creating a development Docker container. It is based on Alpine and includes the Astral.sh uv Python Package Manager. The image provides everything necessary to run any version of Python, work on any project, and use any library within a Docker container.# astral-sh-uv-python
Bare bones Alpine with Astral.sh uv Python Package Manager. Everything you need to run any version of Python, any project, any lib in a docker container.

To use the Dockerfile contained in the repository, follow these steps:

1. Clone the repository to your local machine using the following command:
   ```
   git clone <repository-url>
   ```

2. Navigate to the directory where the Dockerfile is located.

3. Build the Docker image using the following command:
   ```
   docker build -t <image-name> .
   ```

4. Once the image is built, you can run a container based on this image using the following command:
   ```
   docker run -it <image-name>
   ```

To use it in Visual Studio Code's dev containers, you can include a devcontainer.json configuration file in the root of your project. The devcontainer.json file should specify the Dockerfile to use and any additional settings for the development container. Here's an example of a devcontainer.json file:

```json
{
  "name": "Python Development Environment",
  "dockerFile": "Dockerfile",
  "settings": {
    "terminal.integrated.shell.linux": "/bin/sh"
  },
  "extensions": ["ms-python.python"]
}
```

By including this devcontainer.json file in your project, Visual Studio Code will automatically detect and use the Dockerfile to create a development container when you open the project in the IDE.

In the example provided, if you want to change the list of extensions, you can do so directly within the "extensions" key in the devcontainer.json file. Simply update the list of extensions to include or exclude the desired ones.
