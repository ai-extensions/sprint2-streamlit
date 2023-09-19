# Simple Hello World Streamlit app

## Execution steps using Visual Studio Code

* Start Docker Desktop
* Start VS Code 
* Command Palette > Dev Containers: Clone Repository in named Container Volume... (note: you must have the Dev Containers extension installed)
* Paste the repository link https://github.com/ai-extensions/sprint2-streamlit.git
* Create a new Volume (type the name or use default name)
* Name folder (type the name or use default `sprint2-streamlit`)
* The creation and set-up of the dev container will start. When it finishes, open a Terminal and run:
    ```
    streamlit run app.py
    ```
* you can open the Streamlit app by clicking the "Open in Browser" button in the pop-up window.

## Build local container

```
docker build -t streamlit-hw .
```

```
docker run -p 8888:8888 --rm -it streamlit-hw 
``` 