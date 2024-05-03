# Calcolatore dei segni zodiacali cinesi con Iaac Terraform
## Un calcolatore che, inserendo il proprio anno di nascita, ci ridarà l'animale del nostro anno e ci dirà anche l'animale dell' anno corrente.
## Pre-requisiti:
Abbiamo usato `WSL2` per creare questa app; per farla partire serve `minikube`, `docker` e `terraform` installati sulla propria macchina.

## Comandi per far partire il calcolatore:

# Ci sono due modi per utilizzare questo applicativo `Terraform`:

## 1. Come creazione di immagine Docker

`cd image_app`

`terraform init`

`terraform apply`

Ora avrai la tua immagine creata (`zodiac`) e con il comando `docker images` potrai controllarlo.

## 2. Attraverso la cartella `image_app` nella repository
### questo passaggio è facoltativo perchè si può far partire tutto con docker run (ti invito a vedere l'altra repository `https://github.com/Noteram98/Docker_Test.git` per capire come)

`minikube start`

`cd service_app`

`terraform init`

`terraform apply`

Ora il tuo applicativo dovrebbe partire (in caso di problemi ti prego di contattarmi!)

# NOTE DEV
°Cambia a tuo piacimento questo applicativo è stato fatto in un lab durante un corso e speriamo che funzioni tutto.
  
°Docker non è obbilgatorio ma una vm per minikube deve essere presente sulla propria macchina.

°A noi ci ha impiegato 10+ min per partire
