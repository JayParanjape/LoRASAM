echo "endovis17_lora16"

for i in "Left Prograsp Forceps",2 "Right Prograsp Forceps",2 "Maryland Bipolar Forceps",1 "Left Large Needle Driver",3 "Right Large Needle Driver",3 "Vessel Sealer",4 "Left Grasping Retractor",5 "Right Grasping Retractor",5 "Monopolar Curved Scissors",6;
do IFS=","; set $i;
echo "$1 and $2";

python generate_predictions.py --data_folder "/media/ubuntu/New Volume/jay/endovis17/instrument_1_4_testing/instrument_dataset_1/left_frames" --data_config config_endovis_test.yml --model_config config_model_test.yml --save_path "endovis17_lora16/instrument_1/$1" --gt_path /media/ubuntu/New\ Volume/jay/endovis17/instrument_2017_test/instrument_2017_test/instrument_dataset_1/TypeSegmentation  --pretrained_path endovis17_lora16.pth --device "cuda:0" --labels_of_interest "$1" --codes "$2"

python generate_predictions.py --data_folder "/media/ubuntu/New Volume/jay/endovis17/instrument_1_4_testing/instrument_dataset_2/left_frames" --data_config config_endovis_test.yml --model_config config_model_test.yml --save_path "endovis17_lora16/instrument_2/$1" --gt_path /media/ubuntu/New\ Volume/jay/endovis17/instrument_2017_test/instrument_2017_test/instrument_dataset_2/TypeSegmentation  --pretrained_path endovis17_lora16.pth --device "cuda:0" --labels_of_interest "$1" --codes "$2"

python generate_predictions.py --data_folder "/media/ubuntu/New Volume/jay/endovis17/instrument_1_4_testing/instrument_dataset_3/left_frames" --data_config config_endovis_test.yml --model_config config_model_test.yml --save_path "endovis17_lora16/instrument_3/$1" --gt_path /media/ubuntu/New\ Volume/jay/endovis17/instrument_2017_test/instrument_2017_test/instrument_dataset_3/TypeSegmentation  --pretrained_path endovis17_lora16.pth --device "cuda:0" --labels_of_interest "$1" --codes "$2"

python generate_predictions.py --data_folder "/media/ubuntu/New Volume/jay/endovis17/instrument_1_4_testing/instrument_dataset_4/left_frames" --data_config config_endovis_test.yml --model_config config_model_test.yml --save_path "endovis17_lora16/instrument_4/$1" --gt_path /media/ubuntu/New\ Volume/jay/endovis17/instrument_2017_test/instrument_2017_test/instrument_dataset_4/TypeSegmentation  --pretrained_path endovis17_lora16.pth --device "cuda:0" --labels_of_interest "$1" --codes "$2"

python generate_predictions.py --data_folder "/media/ubuntu/New Volume/jay/endovis17/instrument_5_8_testing/instrument_dataset_5/left_frames" --data_config config_endovis_test.yml --model_config config_model_test.yml --save_path "endovis17_lora16/instrument_5/$1" --gt_path /media/ubuntu/New\ Volume/jay/endovis17/instrument_2017_test/instrument_2017_test/instrument_dataset_5/TypeSegmentation  --pretrained_path endovis17_lora16.pth --device "cuda:0" --labels_of_interest "$1" --codes "$2"

python generate_predictions.py --data_folder "/media/ubuntu/New Volume/jay/endovis17/instrument_5_8_testing/instrument_dataset_6/left_frames" --data_config config_endovis_test.yml --model_config config_model_test.yml --save_path "endovis17_lora16/instrument_6/$1" --gt_path /media/ubuntu/New\ Volume/jay/endovis17/instrument_2017_test/instrument_2017_test/instrument_dataset_6/TypeSegmentation  --pretrained_path endovis17_lora16.pth --device "cuda:0" --labels_of_interest "$1" --codes "$2"

python generate_predictions.py --data_folder "/media/ubuntu/New Volume/jay/endovis17/instrument_5_8_testing/instrument_dataset_7/left_frames" --data_config config_endovis_test.yml --model_config config_model_test.yml --save_path "endovis17_lora16/instrument_7/$1" --gt_path /media/ubuntu/New\ Volume/jay/endovis17/instrument_2017_test/instrument_2017_test/instrument_dataset_7/TypeSegmentation  --pretrained_path endovis17_lora16.pth --device "cuda:0" --labels_of_interest "$1" --codes "$2"

python generate_predictions.py --data_folder "/media/ubuntu/New Volume/jay/endovis17/instrument_5_8_testing/instrument_dataset_8/left_frames" --data_config config_endovis_test.yml --model_config config_model_test.yml --save_path "endovis17_lora16/instrument_8/$1" --gt_path /media/ubuntu/New\ Volume/jay/endovis17/instrument_2017_test/instrument_2017_test/instrument_dataset_8/TypeSegmentation  --pretrained_path endovis17_lora16.pth --device "cuda:0" --labels_of_interest "$1" --codes "$2"

python generate_predictions.py --data_folder "/media/ubuntu/New Volume/jay/endovis17/instrument_9_10_testing/instrument_dataset_9/left_frames" --data_config config_endovis_test.yml --model_config config_model_test.yml --save_path "endovis17_lora16/instrument_9/$1" --gt_path /media/ubuntu/New\ Volume/jay/endovis17/instrument_2017_test/instrument_2017_test/instrument_dataset_9/TypeSegmentation  --pretrained_path endovis17_lora16.pth --device "cuda:0" --labels_of_interest "$1" --codes "$2"

python generate_predictions.py --data_folder "/media/ubuntu/New Volume/jay/endovis17/instrument_9_10_testing/instrument_dataset_10/left_frames" --data_config config_endovis_test.yml --model_config config_model_test.yml --save_path "endovis17_lora16/instrument_10/$1" --gt_path /media/ubuntu/New\ Volume/jay/endovis17/instrument_2017_test/instrument_2017_test/instrument_dataset_10/TypeSegmentation  --pretrained_path endovis17_lora16.pth --device "cuda:0" --labels_of_interest "$1" --codes "$2"

done