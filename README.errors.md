
# cannot import name builder

```
albe@pmdsdata6:/srv/test/ml644a/f644cpu$ make otst
docker-compose exec tf bash -c "python /tf/models/research/object_detection/builders/model_builder_tf2_test.py 2>&1|tee -a \
tf2test-out$(date +"__%Y.%m.%d_%b-%a_%H.%M.%S").txt"
2022-07-17 23:45:14.453766: W tensorflow/stream_executor/platform/default/dso_loader.cc:64] Could not load dynamic library 'libcudart.so.11.0'; dlerror: libcudart.so.11.0: cannot open shared object file: No such file or directory
2022-07-17 23:45:14.453882: I tensorflow/stream_executor/cuda/cudart_stub.cc:29] Ignore above cudart dlerror if you do not have a GPU set up on your machine.
Traceback (most recent call last):
  File "/tf/models/research/object_detection/builders/model_builder_tf2_test.py", line 24, in <module>
    from object_detection.builders import model_builder
  File "/usr/local/lib/python3.8/dist-packages/object_detection/builders/model_builder.py", line 23, in <module>
    from object_detection.builders import anchor_generator_builder
  File "/usr/local/lib/python3.8/dist-packages/object_detection/builders/anchor_generator_builder.py", line 26, in <module>
    from object_detection.protos import anchor_generator_pb2
  File "/usr/local/lib/python3.8/dist-packages/object_detection/protos/anchor_generator_pb2.py", line 5, in <module>
    from google.protobuf.internal import builder as _builder
ImportError: cannot import name 'builder' from 'google.protobuf.internal' (/usr/local/lib/python3.8/dist-packages/google/protobuf/internal/__init__.py)
albe@pmdsdata6:/srv/test/ml644a/f644cpu$ dc exec tf bash

```

## ans

Try:

Run pip install protobuf==3.20.*

#



