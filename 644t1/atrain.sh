

export vout=out-modmain.tf2_644t1_2022-07-17g-8064.log.txt 
(test -f $vout && (echo; echo "    ERROR ERROR - Output file already exists, Pick another name. Press Ctrl-c and edit the name..." ; sleep 98765))

nvidia-smi|tee -a $vout;uname -a|tee -a $vout;free -h|tee -a $vout;cat /etc/lsb-release|tee -a $vout;df -h|tee -a $vout;
echo $vout

python ../tflib/models/research/object_detection/model_main_tf2.py \
    --pipeline_config_path=pipeline.config \
    --model_dir=train001 \
    --alsologtostderr \
    --num_train_steps=8000 \
    --sample_1_of_n_eval_examples=1 \
    --num_eval_steps=100 2>&1|tee -a $vout 
    
    