#script teia.sh de envio das ultimas imagens + dados para servidores do cotidianosensitivo.info
extrato=`ls -t1 /home/rbrz/Bancada/sw/cotidiano/adubo/imgs/ |head -1`
caminho=/home/rbrz/Bancada/sw/cotidiano/adubo/imgs/$extrato
temp=$1
hum=$2
mph=$3
kt=$4
curl -X POST -F file=@$caminho -F image.temperature=$temp -F image.relativeHumidity=$hum -F image.windMilesPerHour=$mph -F image.windKnots=$kt -F image.comunity.token=C678179ad-93ee-4941-8a7c-8e88cdd5c27eS http://50.22.248.49/cotidianosensitivo/images/save
#script teia.sh de envio das ultimas imagens + dados para servidores do cotidianosensitivo.info
extrato=`ls -t1 /home/rbrz/Bancada/sw/cotidiano/adubo/imgs/ |head -1`
caminho=/home/rbrz/Bancada/sw/cotidiano/adubo/imgs/$extrato
temp=$1
hum=$2
mph=$3
kt=$4
curl -X POST -F file=@$caminho -F image.temperature=$temp -F image.relativeHumidity=$hum -F image.windMilesPerHour=$mph -F image.windKnots=$kt -F image.comunity.token=C678179ad-93ee-4941-8a7c-8e88cdd5c27eS http://50.22.248.49/cotidianosensitivo/images/save
#script teia.sh de envio das ultimas imagens + dados para servidores do cotidianosensitivo.info
extrato=`ls -t1 /home/rbrz/Bancada/sw/cotidiano/adubo/imgs/ |head -1`
caminho=/home/rbrz/Bancada/sw/cotidiano/adubo/imgs/$extrato
temp=$1
hum=$2
mph=$3
kt=$4
curl -X POST -F file=@$caminho -F image.temperature=$temp -F image.relativeHumidity=$hum -F image.windMilesPerHour=$mph -F image.windKnots=$kt -F image.comunity.token=C678179ad-93ee-4941-8a7c-8e88cdd5c27eS http://50.22.248.49/cotidianosensitivo/images/save
