# Sentinel-2 tiling service - light demo

## Using Visual Studio Code

Start the VS Code IDE and the development container.

Open a Terminal and run:

```
streamlit run app.py
```

## Build local container

```
docker build -t s2-tiling .
```

```
docker run -p 8888:8888 --rm -it s2-tiling 
``` 