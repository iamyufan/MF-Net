set -ex
python train.py --dataroot ./datasets/font --model mfnet --name mfnet_train --dataset_mode font --no_dropout --gpu_ids 0 --batch_size 100 --shuffle_dataset
