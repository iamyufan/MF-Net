set -ex

for ((i=1; i<=20; i ++))
do
    starttime=`date +%s`
    python test.py --dataroot ./datasets/font  --model mfnet --dataset_mode font --eval --name mfnet_unseen_lang --no_dropout --gpu_id -1 --phase mfnet_unseen_lang_test --epoch $i
    endtime=`date +%s`
    # start_seconds=$(data --date="$starttime" +%s);
    # end_seconds=$(data --date="$endtime" +%s);
    echo "Inferring time: "$((endtime-starttime))"s" >> "./results/epoch_${i}_time.txt"
done