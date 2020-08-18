#! /bin/sh

# Create compute instance
gcloud compute instances create wordpress-lamp-2 --machine-type=f1-micro --image-family=ubuntu-2004-lts --image-project=ubuntu-os-cloud --boot-disk-size=10GB --boot-disk-type=pd-standard --subnet=default  --zone=us-central1-a --metadata-from-file startup-script=startup.sh

# Firewall Rules
gcloud compute firewall-rules create --network=default default-allow-http --allow=tcp:80
gcloud compute firewall-rules create --network=default default-allow-https --allow=tcp:443
gcloud compute firewall-rules create --network=default default-allow-ssh --allow=tcp:22