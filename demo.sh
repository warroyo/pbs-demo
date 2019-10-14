#! /bin/bash


########################
# include the magic
########################
. demo-magic.sh

pe "pb api set https://pbs.lab.local:30849 --skip-ssl-validation"

pe "clear"

pe "pb login"

pe "clear"
p "pb team create dreamworks-devs"

pe "clear"
pe "cat registry.yml"

pe "clear"
p "pb secrets registry apply -f registry.yml" 

pe "clear"
pe "cat git.yml"

pe "clear"
p "pb secrets git apply -f git.yml"

pe "clear"
pe "cat spring-music.yml"

pe "clear"
pe "pb image apply -f spring-music.yml"

pe "clear"
pe "pb image builds index.docker.io/warroyo90/spring-music" 




