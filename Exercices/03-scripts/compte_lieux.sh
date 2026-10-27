#!/usr/bin/env bash

$ANNEE=$1
$MOIS=$2
$NOMBRE=$3

ls -l ann/$ANNEE/201?_£{MOIS}*.ann | wc -l
cat ann/$ANNEE/201?_${MOIS}_*.ann |grep Location | cut -f3 | sort | uniq -c | sort -n |tail -n "$NOMBRE"
