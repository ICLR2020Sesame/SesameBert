echo "***** Remove files in folder CoLA *****" 
rm -rf /bert_output/CoLA/* 
echo "***** Remove files in folder SST-2 *****" 
rm -rf /bert_output/SST-2/* 
echo "***** Remove files in folder QQP *****" 
rm -rf /bert_output/QQP/* 
echo "***** Remove files in folder RTE *****" 
rm -rf /bert_output/RTE/* 
echo "***** Remove files in folder MRPC *****" 
rm -rf /bert_output/MRPC/* 
echo "***** Remove files in folder STS-B *****" 
rm -rf /bert_output/STS-B/* 
echo "***** Remove files in folder QNLI *****" 
rm -rf /bert_output/QNLI/* 
echo "***** Remove files in folder WNLI *****" 
rm -rf /bert_output/WNLI/* 
echo "***** Remove files in folder MNLI-m *****" 
rm -rf /bert_output/MNLI-m/* 
echo "***** Remove files in folder MNLI-mm *****" 
rm -rf /bert_output/MNLI-mm/* 
echo "***** Remove files in folder AX *****" 
rm -rf /bert_output/AX/* 
echo "***** Running ADV *****" 
rm -rf /bert_output/ADV/* 
echo "***** Running CoLA *****" 
python run_classifier.py --task_name=cola --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/CoLA/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=3e-5 --num_train_epochs=3.0 --output_dir=./bert_output/CoLA/ --do_lower_case=False 2>./bert_output/CoLA/cola_blur_gpu.txt 
echo "***** Running SST-2 *****" 
python run_classifier.py --task_name=sst-2 --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/SST-2/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=3e-5 --num_train_epochs=3.0 --output_dir=./bert_output/SST-2/ --do_lower_case=False 2>./bert_output/SST-2/sst2_blur_gpu.txt 
echo "***** Running QQP *****" 
python run_classifier.py --task_name=qqp --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/QQP/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=3e-5 --num_train_epochs=3.0 --output_dir=./bert_output/QQP/ --do_lower_case=False 2>./bert_output/QQP/qqp_blur_gpu.txt 
echo "***** Running RTE *****" 
python run_classifier.py --task_name=rte --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/RTE/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=3e-5 --num_train_epochs=3.0 --output_dir=./bert_output/RTE/ --do_lower_case=False 2>./bert_output/RTE/rte_blur_gpu.txt 
echo "***** Running MRPC *****" 
python run_classifier.py --task_name=mrpc --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/MRPC/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/MRPC/ --do_lower_case=False 2>./bert_output/MRPC/mrpc_blur_gpu.txt 
echo "***** Running STS-B *****" 
python run_regressor.py --task_name=sts-b --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/STS-B/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/STS-B/ --do_lower_case=False 2>./bert_output/STS-B/stsb_blur_gpu.txt 
echo "***** Running QNLI *****" 
python run_classifier.py --task_name=qnli --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/QNLI/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=3e-5 --num_train_epochs=3.0 --output_dir=./bert_output/QNLI/ --do_lower_case=False 2>./bert_output/QNLI/qnli_blur_gpu.txt 
echo "***** Running WNLI *****" 
python run_classifier.py --task_name=wnli --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/WNLI/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/WNLI/ --do_lower_case=False 2>./bert_output/WNLI/wnli_blur_gpu.txt 
echo "***** Running MNLI-m *****" 
python run_classifier.py --task_name=mnli-m --do_train=true --do_eval=true --do_predict=true --data_dir=./datasets/MNLI-m/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./cased_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/MNLI-m/ --do_lower_case=False 2>./bert_output/MNLI-m/mnlim_blur_gpu.txt 
echo "***** Running MNLI-mm *****" 
python run_classifier.py --task_name=mnli-mm --do_train=false --do_eval=true --do_predict=true --data_dir=./datasets/MNLI-mm/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./bert_output/MNLI-m/model.ckpt-36815 --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/MNLI-mm/ --do_lower_case=False 2>./bert_output/MNLI-mm/mnlimm_blur_gpu.txt 
echo "***** Running AX *****" 
python run_classifier.py --task_name=ax --do_train=false --do_eval=false --do_predict=true --data_dir=./datasets/MNLI-m/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./bert_output/MNLI-m/model.ckpt-36815 --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/AX/ --do_lower_case=False 2>./bert_output/AX/ax_blur_gpu.txt 
echo "***** Running ADV *****" 
python run_classifier.py --task_name=adv --do_train=false --do_eval=false --do_predict=true --data_dir=./datasets/MNLI-m/ --vocab_file=./cased_L-12_H-768_A-12/vocab.txt --bert_config_file=./cased_L-12_H-768_A-12/bert_config.json --init_checkpoint=./bert_output/MNLI-m/model.ckpt-36815 --max_seq_length=400 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=./bert_output/ADV/ --do_lower_case=False 2>./bert_output/ADV/adv_blur_gpu.txt 