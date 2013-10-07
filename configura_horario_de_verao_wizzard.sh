#!/bin/bash
#Script para configuração de horario de verao

clear

echo "Script para configuracao de verão"
echo ""
echo ""
sleep 3
clear


echo "Digite o ano inicio do horaio de verao e tecle enter"
echo ""
read anoinicio
echo "ano do inicio = $anoinicio"
clear

echo "Digite o ano do final do horaio de verao e tecle enter"
echo ""
read anofim
echo "ano do fim = $anofim"
clear


echo "Digite o dia de inicio do horario de verao e tecle enter"
echo ""
read diainicio
echo "dia do inicio = $diainicio"
clear

echo "Digite o dia do fim do horario de verao e tecle enter"
echo ""
read diafim
echo "dia do fim = $diafim"
clear


echo "Gerando arquivo de configuracao........"
sleep 2
echo Rule\ Brazil\ $anoinicio\ only\ -\ Oct\ $diainicio\ 00:00\ 1\ \S >>  /tmp/tz-brazil-$anofim.zic
echo Rule\ Brazil\ $anofim\ only\ -\ Feb\ $diafim\ 00:00\ 0\ \- >> /tmp/tz-brazil-$anofim.zic
echo Zone\ Brazil\/East\ \-3:00\ Brazil\ \BR%sT >> /tmp/tz-brazil-$anofim.zic

clear


echo "Deseja efetivar o horário de verão s/n?"
read resposta
if [ $resposta = "s" ]; then
   
    echo "executando comando zic.........."
    zic /tmp/tz-brazil-$anofim.zic
    sleep 3

    echo "realizando backup do arquivo localtime............"
    echo ""
    cp /etc/localtime /etc/localtime.`date +%d%m%Y-%H%M%S`
    cp /tmp/tz-brazil-$anofim.zic /root/
    sleep 3

    echo "copiando arquivo /usr/share/zoneinfo/Brazil/East para /etc/localtime................"
    cp /usr/share/zoneinfo/Brazil/East /etc/localtime
    echo ""
    sleep 3
    
    echo "Time zone alterado segue resultado"
#    zdump -v Brazil/East |grep $anoinicio
#    zdump -v Brazil/East |grep $anofim
    zdump -v Brazil/East | egrep "$anoinicio|$anofim"



else
    echo "Você não ativou o horário de verão"
    echo "Time Zone Atual"
    zdump -v Brazil/East
fi 


exit 0
