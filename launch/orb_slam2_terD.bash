sudo apt install -y docker.io
sudo docker pull debbieliang/ros_open:posestamped 
sudo docker run --network host --rm -it debbieliang/ros_open:posestamped /bin/bash -c "cd /RosImageFolderPublisher && source devel/setup.bash && cd src && rosrun image_folder_publisher image_folder_publisher.py _image_folder:=./../../rgbd_dataset_freiburg1_xyz/rgb _topic_name=/camera/image_raw"
