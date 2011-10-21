#!/bin/bash

##########################################################################
# cotidianosensitivo.info - internet das coisas, net.art, eco-dispositivos
#########################################################################

# script de configuração geral do sistema
# requisitos:
# computador com Linux / Ubuntu / Debian
# internet
# webcam
# pd-extended (para instalar http://puredata.info/community/projects/software/pd-extended)

echo ""
echo ""
echo ""
echo "##########################################################################"
echo "# cotidianosensitivo.info - internet das coisas, net.art, eco-dispositivos"
echo "#########################################################################"

echo "--------------------------------------------"
echo "requisitos mínimo: Internet / Webcam / Pd-extended"
echo "---------------------------------------------"
echo "este script irá instalar os softwares curl (transferencia de dados via URL) e weather (captura de dados de radares)"
echo "inicializando script em alguns segundos..."
sleep 5
echo "atualização do sistema...."
sudo apt-get update
echo "atualizando...."
echo "......."
sleep 10
echo "instalando curl (transferencia de URL) e weather (conexão com radares)"
sudo apt-get install curl weather-util
echo "configurando softwares...."
sleep 4
echo "*************************************"
echo "------------------------------------"
echo "configurando arquivo teia.sh para envio de dados"
touch teia.sh
echo "#script teia.sh de envio das ultimas imagens + dados para servidores do cotidianosensitivo.info" >> teia.sh
echo "extrato="'`ls -t1 '$PWD'/imgs/ |head -1`'"" >> teia.sh
echo "caminho=""$PWD/imgs/"""'$extrato'"" >> teia.sh
echo "temp="'$1'"" >> teia.sh
echo "hum="'$2'"" >> teia.sh
echo "mph="'$3'"" >> teia.sh
echo "kt="'$4'"" >> teia.sh
echo "curl -X POST -F "file=@""'$caminho'""" -F "image.temperature=""'$temp'""" -F "image.relativeHumidity=""'$hum'""" -F "image.windMilesPerHour=""'$mph'""" -F "image.windKnots=""'$kt'""" -F "image.comunity.token=C678179ad-93ee-4941-8a7c-8e88cdd5c27eS" http://50.22.248.49/cotidianosensitivo/images/save" >> teia.sh
sleep 7
echo "arquivo configurado...."
echo "-----------------------------------------------"
echo "o sistema cotidianosensitivo já está instalado no seu computador"
echo "agora você pode usar o software adubo.pd para catalogar dados e imagens na plataforma cotidianosensitivo.info"
echo "----------------------------------------------"
echo ""
echo ""
echo "--------------------------------------------------"
echo "leia no README.txt as instruções de uso do sistema"
echo "documentação - http://cotidianosensitivo.info/blog"
echo "git - https://github.com/3ecologias/adubo"
echo "-------------------------------------------------"
echo ""
echo "abrindo software adubo.pd"
echo "........................"
sleep 5
echo "................."
echo "cotidiano sensitivo - internet das coisas, net.art, eco-dispositivos."
echo "---------------------------------------------------------------------"
echo "tutorial:"
echo "1. Escolha o diretório onde será salva as imagens (de preferência dentro da pasta onde descompactou o cotidianosensitivo.zip)"
echo "2. Defina o dispositivo da camera (se está em /dev/video0, /dev/video1...)"
echo "3. Habilite a iris, neste passo a máquina Gem irá abrir com as informações da camera."
echo "4. Habilite o DSP (Audio)"
echo "5. Defina o threshold do áudio."
echo "6. Habilite o catalogo das imagens"
echo "7. Habilite a nuvem para enviar os dados para os servidores Cloud Computing."
echo "8. Escolha um dos radares disponíveis"
echo "9. Receba os dados para verificar se está ok."
echo "10. Verifique se as imagens estão chegando no site http://cotidianosensitivo.info (plataforma)."

pdextended adubo.pd &
