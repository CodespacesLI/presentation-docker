# Hands-On for the Docker Presentation

## 1. Run OwnCloud Image
This exercise demonstrates how to pull images from a registry and run them.

1. Go to https://hub.docker.com/ and search for `owncloud` → https://hub.docker.com/_/owncloud
2. Pull the image:
   ```bash
   docker pull owncloud
   ```
3. Run the container:
   ```bash
   docker run -p 8080 -d owncloud
   ```

## 2. Run the Todo App from Code
This exercise shows how you can add a Dockerfile to your code and run it in a container (deployment).

1. Clone the repository:
   ```bash
   git clone https://github.com/maciekt07/TodoApp
   cd TodoApp
   ```
2. Add a Dockerfile.
3. Build the image:
   ```bash
   docker build -t todoapp .
   ```
4. Run the container:
   ```bash
   docker run -d -p 4173:4173 todoapp
   ```

## 3. Create a Dev Container
This exercise shows how to create a simple dev container. In this example, we’re creating a dev container for the project in exercise 2, using Node.js with JavaScript.

1. Install Visual Studio Code.
2. Install the **Dev Containers** extension.
3. Press `Shift + Ctrl + P` → **Add Dev Container Configuration Files...**.
4. Choose **Add Configuration to Workspace**.
5. Select **From predefined container configuration template...** → **Node.js + JavaScript**.
6. Click the ![image](https://github.com/user-attachments/assets/a21fd473-8262-4274-a3b2-8f2da3a86c17) button to **Reopen in Container**.

## 4. Push the Image to a Repository
In this exercise, we are creating a custom repository on hub.docker.com and pushing the image from exercise 2.

1. Go to https://hub.docker.com/repositories in your account profile.
2. Click **Create Repository** and name it `todo-app`.
3. Build and tag the image:
   ```bash
   docker build -t dockerblocker2000/todo-app:1.0.0 .
   ```
4. Push the image:
   ```bash
   docker push dockerblocker2000/todo-app:1.0.0
   ```
## 5 Docker Compose
In this exercise, we are starting multiple containers in a compose.

1. Go to https://github.com/docker/awesome-compose/tree/master and download the repository
2. Select one project and start it with `docker compose up -d`
3. Read the `compose.yml` file
