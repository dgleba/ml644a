
# Usage


See Makefile


Export inference graph

```
dc exec tf bash -c "python /tf/models/research/object_detection/exporter_main_v2.py \
    --trained_checkpoint_dir train001-mc \
    --output_directory inference_graph \
    --pipeline_config_path pipeline_mc.config    2>&1|tee -a out-expinfgr-mc_b.log.txt  "

```

