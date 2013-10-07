Script para configuração de horário de verão
=======

Trata-se de um script simples para facilitar a configuração de horário de verão em máquinas Linux. 
O script foi testado em Suse (OpenSuse e SLES), Debian, Ubuntu e CentOS mas deve ser compatível com qualquer sistema LINUX

O script tem o formato de Wizard, daqueles que vai pedindo uma informação de cada vez.


Executando o script
=======


Baixe o script e o execute com um

./configura_horario_de_verao_wizard.sh

O programa irá fazer algumas perguntas. A primeira é o ano de início do horário de verão. Digite o ano com quatro digitos.
Ex: 2013


Em seguida o script irá solicitar o ano do fim do horário de verão. Digite também com 4 digitos.
Ex: 2014


A próxima pergunta será o dia de início do horário de verão, entendendo é claro que o mês é o de outubro. Digite o dia com 2 digitos.
Ex: 20


A última pergunta é o dia do fim do horário de verão, entendendo é claro que o mês é o de fevereiro. Digite o dia com 2 digitos.
Ex: 16



A seguir o script irá pedir uma confirmação para iniciar o processo de configuração. Caso esteja tudo certo digite s (de sim) e a configuração terá inicio.


O novo arquivo de configuracao e o seguinte:

Rule Brazil 2013 only - Oct 20 00:00 1 S
Rule Brazil 2014 only - Feb 16 00:00 0 -
Zone Brazil/East -3:00 Brazil BR%sT

Deseja efetivar o horário de verão s/n?
s
executando comando zic..........
realizando backup do arquivo localtime............

copiando arquivo /usr/share/zoneinfo/Brazil/East para /etc/localtime................

Time zone alterado segue resultado
Brazil/East  Sun Oct 20 02:59:59 2013 UTC = Sat Oct 19 23:59:59 2013 BRT isdst=0 gmtoff=-10800
Brazil/East  Sun Oct 20 03:00:00 2013 UTC = Sun Oct 20 01:00:00 2013 BRST isdst=1 gmtoff=-7200
Brazil/East  Sun Feb 16 01:59:59 2014 UTC = Sat Feb 15 23:59:59 2014 BRST isdst=1 gmtoff=-7200
Brazil/East  Sun Feb 16 02:00:00 2014 UTC = Sat Feb 15 23:00:00 2014 BRT isdst=0 gmtoff=-10800


Contribuições
======= 

Tá bom, sei que o script é bem simples e poderia ser melhor. Futuramente devo alterá-lo para uma execução mais rápida do tipo:

./configura_horario_de_verao 20 10 2013 16 02 2014

onde os parâmetros seriam o dia, mês e ano de início e dia, mês e ano de fim.

Mas por enquanto é isso. Fique à vontatde para contribuir e melhorar o script.



