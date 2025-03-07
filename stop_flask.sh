#!/bin/bash
echo "Recherche des processus flask..."
pids=$(pgrep -f "flask")

if [ -z "$pids" ]; then
    echo "aucun serveur flask actif."
else
    echo "fermeture des processus flask : $pids"
    kill -9 $pids
    echo "Tous les serveurs flask ont été arretés."
fi
