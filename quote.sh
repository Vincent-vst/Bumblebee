#! /bin/bash 

curl -s https://api.adviceslip.com/advice | jq -r '.slip.advice'
