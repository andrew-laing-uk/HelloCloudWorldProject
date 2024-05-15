# Build image
sudo docker build --tag flask_server_app .

# Run mapping container port 5000 to port 80 on the VM and background
sudo docker run -p 5000:80 flask_server_app &

# Stop docker image
sudo docker stop <containername>
