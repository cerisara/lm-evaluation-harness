source /home/xtof/envs/transformers/bin/activate

# python main.py --model gpt2 --device cpu --tasks lambada

ln -s ../AutoFinetune/main.py ./autoFinetuneServer.py
ln -s ../AutoFinetune/utils.py ./
ln -s ../AutoFinetune/pytorch_model.bin.index.json ./
ln -s ../AutoFinetune/templates ./

export FLASK_ENV=development
python autoFinetuneServer.py

