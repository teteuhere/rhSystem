#!/bin/bash
user=$(whoami) #log de usuario
data=$(date) #log de data

touch alvo.txt  #Tocar o arquivo
head -1 Funcionarios.csv >> alvo.txt #Manter intacta a primeira linha
echo "" >> alvo.txt #Linha em branco para organização
tail -n +2 Funcionarios.csv | sort -u >> alvo.txt #Amarra da segunda linha em diante e a ordenação
echo "" >> alvo.txt #Linha em branco para organização
echo "Usuario executante: $user" >> alvo.txt ##log de usuario
echo "Data de execução: $data" >> alvo.txt  ##log de usuario
echo "" >> alvo.txt #Linha em branco para organização
echo "Obs: Salarios podem ter sofrido alterações perante ao tempo e reajustes perante as funções" >> alvo.txt #Exibição de observações
echo "Fim da sessão." >> alvo.txt #Informe do fim do arquivo e fim da sessão
echo "" >> alvo.txt #Linha em branco para organização
