

# cpu examples..















#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2022-07-17[Jul-Sun]14-48PM 



#

```
cd ~/ml644a
mkdir ./tflib
rsync -av /home/paperspace/ml639a/dokr639tf2/ml639b/models ./tflib/models

note: tflib/ can be made from commands in .../ml644a/Dockerfile

cd ~/ml644a/644t1
```
#

```
## this stanza may not have been needed if I did sudo apt update first. duh.

#The following packages have unmet dependencies  zlib1g-dev : Depends: zlib1g (= 1:1.2.11.dfsg-2ubuntu1) but 1:1.2.11.dfsg-2ubuntu1.2 is to be installed
sudo apt install zlib1g=1:1.2.11.dfsg-2ubuntu1
sudo apt install zlib1g-dev 

```

#

```
# ERROR Failed building wheel for pycocotools Successfully built object-detection Failed to build pycocotools
# ubuntu tensorflow pycocotools command x86_64-linux-gnu-gcc failed with exit status 1
sudo apt update
 sudo apt install -y python-is-python3
 sudo apt install -y python3.8-dev



pip install -r requirements.txt

python ../tflib/models/research/object_detection/builders/model_builder_tf2_test.py 2>&1|tee -a tf2test-out$(date +"__%Y.%m.%d_%b-%a_%H.%M.%S").txt

pip freeze  2>&1|tee -a pip-freeze_$(date +"__%Y.%m.%d_%b-%a_%H.%M.%S").txt

```

## run training..

bash atrain.sh
    
