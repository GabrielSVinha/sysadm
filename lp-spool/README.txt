- install.sh: muda crontab para atualizar mensalmente | move lp e instala script
- report.sh: gera relatorio de paginas, usuarios (via arquivo) | recebe um mes como param
- reset.sh: move cota do mes para historico e cria novo arquivo de cotas
- lp: checa a cota, bloqueia/permite e atualiza arquivo de cotas

arquivo de cotas: possui informação de usuario + cota atual
repositorio de reports: possui histórico de cotas nos meses passados
log: loga operações de imprimir, atualização da cota e calculo da nova cota

---

cotas:
usuario nº/pag nº/arq mark

adbys 28 0 
gabriel 2 0 *

---
log:
[data]: operação, usuario
---


