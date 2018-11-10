# LP tool for printer

## Instalar

Para instalar a ferramenta, rode o script de insalação como root:

```
sudo bash install.sh <cota de páginas> <cota de arquivos>
```

## Executar

Para executar o utilitário, basta rodar o script lp:

```
lp <arquivo a ser impresso>
```

## Checar cota

Para checar a cota do mês atual, basta imprimir o arquivo de configuração:

```
cat $HOME/.lp/config/<mes>-<ano>.conf
```

## Ver report

Para ver um rerport de algum mes anterior, basta executar o utilitário:

```
report <mes> <ano>
```
