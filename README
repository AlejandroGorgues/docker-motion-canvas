# Description

This repository contains the basic structure to run [Motion Canvas](https://github.com/motion-canvas/motion-canvas) in a container using the `devcontainer` functionality of Visual Studio Code.

# Structure
The repository info is located inside `.devcontainer` folder with the next structure:

- Dockerfile: File that contains the basic structure for a basic nodejs env (nothing important changed).
- devcontainer.json: File that contains the json which whill perform the build process of the Dockerfile, and execute the `post` commands. The most important components in this file (which are declared [here](https://containers.dev/implementors/json_reference/#variables-in-devcontainerjson)), are:
	- `runArgs`: Argument that will load the `env` file for the `post` commands.
	- `postCreateCommand`: Argument that will execute the `create-motion-canvas.sh` at first time.
	- `postStartCommand`: Argument that will executed each time container starts.
- create-motion-canvas: Bash file which executes the installation and configuration of the motion-canvas proyect.
- devcontainer.env: File that contains the environment variables to create the proyect. If any change to the name or path needed, it needs to be modified here.

# How it works 🚀
To start and use the Motion Canvas program, simply:
- Install Docker Desktop
- Execute Visual Studio Code
- Install Docker and Dev Containers extensions
- Select the `Dev Containers: Clone Repository in Container Volume` option in the Command Palette
- Enjoy making presentaitons in real time

# Where it is saved?
By default, Visual Studio Code creates a volume to save all the data. 
As this has been done through Windows, using the next PowerShell command we can obtain the absolute path to the volume data which contains the the volume name:

```
$VOLUME_NAMES= docker volume ls | Select-Object -Skip 1 | ForEach-Object { $_.Split(" ")[5]}

$VOLUME_NAMES -split "`r?`n" | ForEach-Object {
    (docker inspect $_ | ConvertFrom-Json).Mountpoint
}
```

# TODO  📝
 - [ ] Use Docker Compose functionality
 - [ ]  Add Linux script to visualize the mountpoint

# Other resources are
- [DevContainer](https://code.visualstudio.com/docs/devcontainers/containers) official documentation
