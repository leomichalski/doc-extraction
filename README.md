# How to run doc-extraction
1. First, make sure that you've installed docker.
2. If you want to change anything, customize the Dockerfile.
3. Build the docker images.
```
docker run -p 8888:8888 jupyter/minimal-notebook
docker build -f Dockerfile -t doc-extraction-notebook:latest .
```
4. Run the server
    1. with a working directory
    ```
    docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "$PWD":/home/Desktop/doc-extraction/ipynb doc-extraction-notebook
    ```
    2. without
    ```
    docker run -p 8888:8888 doc-extraction-notebook
    ```
5. Open one of the 3 server links that will appear in the terminal
6. Done ;)
