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
--publish=8888:8888 \
--mount type=bind,src=$HOME/pyopencl,dst=/root \
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
docker run --name PyOpenCL \
--restart=always \
--device=/dev/dri \
--publish=8888:8888 \
--mount type=bind,src=$HOME/pyopencl,dst=/root \
-d izone/pyopencl \
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
--mount type=bind,src=$HOME/pyopencl,dst=/root \
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
