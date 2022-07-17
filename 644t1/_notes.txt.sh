
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2022-07-16[Jul-Sat]22-17PM 

test native tf2 ml639g

cd ~/ml644a
mkdir ./tflib
rsync -av /home/paperspace/ml639a/dokr639tf2/ml639b/models ./tflib/models

cd ~/ml644a/644t1

# ERROR Failed building wheel for pycocotools Successfully built object-detection Failed to build pycocotools
# ubuntu tensorflow pycocotools command x86_64-linux-gnu-gcc failed with exit status 1
 sudo apt install -y python-is-python3
 sudo apt install -y python3.8-dev

pip install -r requirements.txt

python models/research/object_detection/builders/model_builder_tf2_test.py


#touch out-modmain.tf2_644t1_2022-07-17c.log.txt


export vout=out-modmain.tf2_644t1_2022-07-17f.log.txt && (test -f $vout && (echo; echo "    ERROR ERROR - Output file already exists, Pick another name. Press Ctrl-c and edit the name..." ; sleep 98765))
nvidia-smi|tee -a $vout;uname -a|tee -a $vout;free -h|tee -a $vout;cat /etc/lsb-release|tee -a $vout;df -h|tee -a $vout;
echo $vout
python ../tflib/models/research/object_detection/model_main_tf2.py \
    --pipeline_config_path=pipeline.config \
    --model_dir=train001 \
    --alsologtostderr \
    --num_train_steps=8000 \
    --sample_1_of_n_eval_examples=1 \
    --num_eval_steps=100 2>&1|tee -a $vout 
    
# works:    1> output.log 2> error.log
    
    
=================================================

python test1.py \
    --a=1 | tee -a test1out.txt

python model_main_tf2.py | tee -a out.txt will not send to file

cannot redirect output of model_main_tf2.py
=================================================

