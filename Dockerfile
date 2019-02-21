FROM izone/amdgpu
MAINTAINER Leonardo Loures <luvres@hotmail.com>

ENV PATH=${PATH}:/usr/local/miniconda3/bin

RUN cd \
    && apt-get update \
    && apt-get install -y curl \
  \
  # Miniconda3
    && MINICONDA="Miniconda3-latest-Linux-x86_64.sh" \
    && curl -L https://repo.anaconda.com/miniconda/${MINICONDA} -o ${MINICONDA} \
  \
    && /bin/bash ${MINICONDA} -b -p /usr/local/miniconda3 \
    && rm ${MINICONDA} \
  \
    && conda install -y jupyter \
    && pip install pyopencl

WORKDIR /root

# Jupyter Notebook port
EXPOSE 8888
