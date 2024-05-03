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

## 2. Attraverso la cartella `image_app` nella repository













-Questo comando serve per copiare e creare l'immagine per il container: `docker build -t NOME_CHE_VUOI:VERSIONE_CHE_VUOI https://github.com/Noteram98/Docker_Test.git` 
  
-Questo comando serve per creare il container dall'immagine: `docker run -it --name NOME_DEL_CONTAINER NOME_SCELTO_PRIMA:VERSIONE_SCELTA_PRIMA`  

-Questo comando serve per avviare il container: `docker start NOME_DEL_CONTAINER`   

-Questo comando serve per entrare nel container: `docker exec -it NOME_DEL_CONTAINER bash`  

-Questo comando serve a far partire il programma dentro il container: `python3 programma.py`  

-Per uscire dal container: `exit`  

# NOTE DEV
°Per cambiare lo script si può editare dentro la cartella `script` e modificare il file `programma.py`  
  
°Nel file `Dockerfile` è possibile trovare e modificare le istruzioni per creare e inizializzare la build su docker
  
°Il comando `docker exec` serve solo in caso docker non entrasse in automatico dentro il container in una shell bash  
   (riconoscibile dal `#` come simbolo della linea di codice invecxe del `$` di docker )
