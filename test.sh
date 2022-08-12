git add .
git commit -m $(date)
git push -u origin main
sudo docker stop Website
sudo docker run -itd --rm --network development --name Website nginx
