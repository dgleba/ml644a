# ref: Madhu Kumar for Docker 2022 Posted on Mar 28 • Updated on Apr 1
# from tensorflow/tensorflow:2.9.1-gpu-jupyter
from tensorflow/tensorflow:2.9.1-jupyter

EXPOSE 8888

Run pwd &&  ls -la /tf

Run apt-get update && apt-get -y install mc

run mkdir -p /out && \
  pip freeze>/out/requirements_$(date +"_%Y.%m.%d_%b-%a_%H.%M.%S")-initial.txt && \
  pip freeze>/out/requirements.txt 
  #conda list>/out/condalist_$(date +"_%Y.%m.%d_%b-%a_%H.%M.%S")-initial.txt && \

RUN groupadd -r albe -g 1000 && useradd -G sudo -u 1000  -m -g albe albe
#user albe
#Run pwd && cd /home/albe &&  mkdir -p ./mla && ls -la


# Run pwd &&  ls -la \
# && wget https://github.com/protocolbuffers/protobuf/releases/download/v21.2/protoc-21.2-linux-x86_64.zip \
# && mkdir -p protoc && mv protoc-21.2-linux-x86_64.zip protoc \
# && cd protoc && unzip protoc-21.2-linux-x86_64.zip  && pwd && chmod +x bin/protoc && cd ..

Run  pwd &&  ls -la \
&&  mkdir -p protoc \
&&  curl -SL -o  ./protoc/protoc.zip  https://github.com/protocolbuffers/protobuf/releases/download/v21.2/protoc-21.2-linux-x86_64.zip \
&&  unzip protoc/protoc.zip -d protoc  && pwd && chmod +x protoc/bin/protoc 


Run pwd && git clone --depth 1 https://github.com/tensorflow/models \
&& cd models/research/ \
&& /tf/protoc/bin/protoc object_detection/protos/*.proto --python_out=. \
&& cp object_detection/packages/tf2/setup.py . \
&& python -m pip install . 

# Run pwd && cd /tf2obj && ls -laR && python models/research/object_detection/builders/model_builder_tf2_test.py
Run pwd &&  ls -la /tf

Run  pwd && curl -SL  http://download.tensorflow.org/models/object_detection/tf2/20200711/efficientdet_d0_coco17_tpu-32.tar.gz -o ./efficientdet.tgz \ 
&& tar -xf efficientdet.tgz && pwd

#add ml639b .

# Run pwd; cd models/research/ && \
# cp object_detection/packages/tf2/setup.py . && \
# python -m pip install . 

run pwd && mkdir -p /out && \
  pip freeze> /out/requirements_$(date +"_%Y.%m.%d_%b-%a_%H.%M.%S")-02.txt && \
  pip freeze> /out/requirements02.txt 
  #conda list>/out/condalist_$(date +"_%Y.%m.%d_%b-%a_%H.%M.%S")-02.txt && \

workdir /home/albe


CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/home/albe", "--ip=0.0.0.0", "--port=8888", "--no-browser"]

