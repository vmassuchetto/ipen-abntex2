### Sobre

Este é um modelo de documento elaborado segundo [guia de
teses](./guia-teses.pdf) e dissertações do Instituto de Pesquisas Energéticas e
Nucleares (IPEN), e abrange os documentos necessários para os programas de
ensino da instituição.

Veja o [PDF de exemplo](./documento.pdf) que é gerado.

### Para utilizar

O `Makefile` utiliza `rubber`, um wrapper do LaTeX para fazer as compilações
necessárias:

    apt-get install rubber

Para compilar o documento simplesmente rode:

    make

Se você trocar o nome do arquivo `documento.tex`, vá também na primeira linha
do `Makefile` e troque o nome ali para que a rotina de compilação possa ser
executada com o novo nome.

Os comentários nos arquivos `documento.tex` e `ipen.sty` possuem indicações de
uso e detalhamento dos comandos que foram configurados para atender os
requisitos do guia de teses.

### Compilando automaticamente à medida que se edita

Uma coisa que gosto de fazer é configurar o script Ruby `watchr` para monitorar
as modificações e ir compilando à medida que se edita o arquivo `.tex`.

Instalar:

    gem install watchr

Rodar:

    watchr -e 'watch("(.*)\.tex$") { |f| system("make") }'
