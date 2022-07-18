
# One liners and simple stuff may be here in this makefile. See sc folder for scripts.

trn:
	# tfrecord
	docker-compose exec tf 	bash train-microc

mcp:
	# tfrecord
	docker-compose exec tf 	bash amcprep

pipi:
	docker-compose exec tf bash -c " pip install -r requirements.txt "

otst:
	docker-compose exec tf bash -c "python /tf/models/research/object_detection/builders/model_builder_tf2_test.py 2>&1|tee -a \
	tf2test-out$$(date +"__%Y.%m.%d_%b-%a_%H.%M.%S").txt"


objset:
	# I would like to figure this out..
	docker-compose exec tf bash -c "cd /tflib/models/research/ ; mv setup.py setup1.py ; cp /code/objdet.tf2.setup2.py ./setup.py ; \
	python -m pip install . "


prep:  
	mkdir -p acup

permm:  
	docker-compose exec tf 	bash -c " chmod -R ug+rw,o+rwx ../imgdata;  "
	#docker-compose exec tf 	bash -c " chmod -R ug+rw,o+rwx ./notebook/models;  "
	#docker-compose exec pyt 	bash -c " chmod -R ug+rw,o+rwx /root/.jupyter;  "

pipf:
	docker-compose exec tf 	bash -c " pip freeze>/home/albe/mltf2/requirements.aftertrn$$(date +"__%Y.%m.%d_%b-%a_%H.%M.%S").txt "
	#docker-compose exec tf 	bash -c " pip freeze "

cp21:
	docker-compose exec tf 	bash -c "rsync -avu /out/ /outdkr/ ; chown -R 1000:1000 /outdkr"


pip21:
	docker-compose exec tf 	bash -c "pip --version;"
	docker-compose exec tf 	bash -c "pip3 --version; python --version; python3 --version"



 
	

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



#  other, older, and `less common` stuff...


rmmodel:  
	docker-compose exec tf 	bash -c " rm -r ./notebook/models;  "



inst:  
	docker-compose exec pyt bash -c " pip install jupyter;  "
	# ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]  

ju:  
	docker-compose exec pyt bash -c "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/acup --ip 0.0.0.0 --no-browser --allow-root"  


cpa:
	# Copy files from container
	bash cpa.sh
