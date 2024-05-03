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

°Questa era la nostra traccia:
1) Disporre di un applicazione (python, php, o altro)
2) Creare il Dockerfile dell'applciazione
3) Generare l'immagine usando terraform ed il proisioner di docker (se sono più applicativi un immagine per ogni applicativo per esempio: php + database mysql creare un dockerfile per il php ed un dockerfile per il mysql con la generazioen del database e tabella relativo)
4) Opzionale ma non obbligatorio: caricare l'immagine su dokerHub dopo registrazione
5) Creare un infrastruttura Kubernetes tramite terraform che fa il deployment dell'applciazione (tramite le immagini realizzte al punto 3). Insrire nel deployment i requisiti di cpu e memory, il service se richiesto, ed obbligatoriamente creare un autoscaling orizzontale basato sull'uso della CPU.
