# conda install pytorch==1.5.1 torchvision==0.6.1 cudatoolkit=10.2 -c pytorch
# pip install filterpy==1.4.5 scikit-image==0.17.2 lap==0.4.0 ipdb opencv-python numba protobuf==3.20
# pip install scikit-learn==0.20.2
# pip install tensorflow==1.13.1
# wget https://pjreddie.com/media/files/yolov3.weights -P /root/tracking-with-sort/config
pip install -r ../requirements.txt

cd ../detector/YOLOv3/weight/
wget https://pjreddie.com/media/files/yolov3.weights
wget https://pjreddie.com/media/files/yolov3-tiny.weights
cd ../../..

wget https://motchallenge.net/sequenceVideos/MOT16-04-raw.webm
pip install gdown

mkdir deep_sort/deep/checkpoint
cd deep_sort/deep/checkpoint

python ../../../setup/dld_models.py
mv deepsort_parameters/*.t7 .
cd ../../../

cd detector/YOLOv3/nms
sh build.sh
cd ../../..

# gdown https://drive.google.com/uc?id=1bB66hP9voDXuoBoaCcKYY7a8IYzMMs4P -O /root/tracking-with-sort/config/mars-small128.pb