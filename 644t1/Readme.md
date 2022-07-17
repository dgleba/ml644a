
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2022-07-16[Jul-Sat]22-17PM 

test native system  tf2 on mc: ml639g

cd ~/ml644a
mkdir ./tflib
rsync -av /home/paperspace/ml639a/dokr639tf2/ml639b/models ./tflib/models

note: tflib/ can be made from commands in .../ml644a/Dockerfile

cd ~/ml644a/644t1

# ERROR Failed building wheel for pycocotools Successfully built object-detection Failed to build pycocotools
# ubuntu tensorflow pycocotools command x86_64-linux-gnu-gcc failed with exit status 1
 sudo apt install -y python-is-python3
 sudo apt install -y python3.8-dev

pip install -r requirements.txt

python models/research/object_detection/builders/model_builder_tf2_test.py


## run training..

bash atrain.sh
    
