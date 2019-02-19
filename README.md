## PyOpenCL AMDGPU
-----

### Pull image
```
docker pull izone/pyopencl
```
### Run
#### Jupyter Notebook
```
docker run --rm --name PyOpenCL \
--device=/dev/dri \
-p 8888:8888 \
--volume=$HOME/pyopencl:/root \
-ti izone/pyopencl \
jupyter notebook \
	--allow-root \
	--ip=0.0.0.0 \
	--no-browser \
	--port=8888 \
	--notebook-dir=/root \
	--NotebookApp.token=''
```
```
docker run --rm --name PyOpenCL \
--device=/dev/dri \
--volume=$HOME/pyopencl:/root \
-ti izone/pyopencl python
```

-----
### Access Browser
```
http://localhost:8888/
```

-----
### Build
```
docker build -t izone/pyopencl .
```
