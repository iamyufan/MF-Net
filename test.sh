set -ex
python test.py --dataroot ./datasets/font  --model mfnet --dataset_mode multisource --eval --name mfnet_unseen_lang --no_dropout --gpu_id -1 --phase mfnet_unseen_lang_test
