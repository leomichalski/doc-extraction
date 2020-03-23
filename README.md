# How to run doc-extraction

1. First, make sure that you've installed docker.
2. Open a terminal and clone the reopository.
```
git clone https://github.com/leommiranda/doc-extraction
```
3. Download the dataset from: <https://storage.cloud.google.com/doc-extraction/exploration_data.zip>
4. Open the terminal and type this command. It'll pull the image from the DockerHub repository and, then, run it as a container on your current directory (doc-extraction).
```
cd doc-extraction
docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v ${PWD}:/current_directory -w /current_directory leommiranda/doc-extraction
```
5. Open one of the 3 server links that will appear in the terminal.
6. (☞ﾟヮﾟ)☞
7. Oh, I almost forgot. If you want to run your own Python script with this image, you could simply:
```
docker run --rm -v ${PWD}:/current_dir -w /current_dir leommiranda/doc-extraction python [SCRIPT_NAME].py
# or even
docker run -it --rm -v ${PWD}:/current_dir -w /current_dir leommiranda/doc-extraction /bin/dash
python [SCRIPT_NAME].py

```
