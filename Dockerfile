FROM nginx:latest
RUN  apt update -yq \
     && apt install net-tools -y \
     && apt install nano iproute2 ssh -y \
     && apt install iputils-ping -y
