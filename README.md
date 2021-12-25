# Bazar.com Frontend
#### This repo is part of Bazar.com: A Multi-tier Online Book Store

To run it please do the following:

1- Make sure you have docker installed

2 - Make sure you have your network set up (docker network create --subnet=172.18.0.0/16 bazar)
3- Within the repo directory run these commands in your terminal:
* docker build --tag bazar-frontend .
* docker run --net bazar --ip 172.18.0.50 -it  --rm bazar-frontend


Now you can run the following:

1- sh search.sh (To test the search endpoint)

2- sh info.sh (To test the info endpoint)

3- sh purchase.sh (To test the purchase endpoint)