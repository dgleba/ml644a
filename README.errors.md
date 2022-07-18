
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


# TypeError: None has type NoneType, but expected one of: int

2022-07-18 00:49:19.536961: I tensorflow/stream_executor/cuda/cudart_stub.cc:29] Ignore above cudart dlerror if you do not have a GPU set up on your machine.
2022-07-18 00:49:23.234623: W tensorflow/stream_executor/platform/default/dso_loader.cc:64] Could not load dynamic library 'libcuda.so.1'; dlerror: libcuda.so.1: cannot open shared object file: No such file or directory
2022-07-18 00:49:23.234715: W tensorflow/stream_executor/cuda/cuda_driver.cc:269] failed call to cuInit: UNKNOWN ERROR (303)
2022-07-18 00:49:23.235313: I tensorflow/stream_executor/cuda/cuda_diagnostics.cc:156] kernel driver does not appear to be running on this host (1044a0d0270a): /proc/driver/nvidia/version does not exist
Traceback (most recent call last):
  File "generate_tfrecord.py", line 100, in <module>
    tf.app.run()
  File "/usr/local/lib/python3.8/dist-packages/tensorflow/python/platform/app.py", line 36, in run
    _run(main=main, argv=argv, flags_parser=_parse_flags_tolerate_undef)
  File "/usr/local/lib/python3.8/dist-packages/absl/app.py", line 312, in run
    _run_main(main, args)
  File "/usr/local/lib/python3.8/dist-packages/absl/app.py", line 258, in _run_main
    sys.exit(main(argv))
  File "generate_tfrecord.py", line 91, in main
    tf_example = create_tf_example(group, path)
  File "generate_tfrecord.py", line 80, in create_tf_example
    'image/object/class/label': dataset_util.int64_list_feature(classes),
  File "/usr/local/lib/python3.8/dist-packages/object_detection/utils/dataset_util.py", line 30, in int64_list_feature
    return tf.train.Feature(int64_list=tf.train.Int64List(value=value))
TypeError: None has type NoneType, but expected one of: int
make: *** [Makefile:6: mcp] Error 1
albe@pmdsdata6:/srv/test/ml644a/f644cpu$

## ans.

tbd

#

