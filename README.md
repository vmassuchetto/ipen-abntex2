Modelo de documento em [LaTeX](http://www.latex-project.org/) utilizando o
[abnTeX2](https://github.com/abntex/abntex) elaborado segundo o [guia de
teses e dissertações](./guia-teses.pdf?raw=true) do [Instituto de Pesquisas Energéticas
Nucleares (IPEN)](http://www.ipen.br).

Veja o [PDF de exemplo](./documento.pdf?raw=true) que é gerado.

### Para utilizar

O `Makefile` incluído utiliza o [`rubber`](http://pkgs.org/download/rubber), um wrapper
do LaTeX. Para compilar simplesmente execute:

    make

Se você trocar o nome do arquivo `documento.tex`, vá também na primeira linha
do `Makefile` e troque o nome ali para que a rotina de compilação possa ser
executada com o novo nome.

Os comentários nos arquivos `documento.tex` e `ipen.sty` possuem indicações de
uso e detalhamento dos comandos que foram configurados para atender os
requisitos do guia de teses.

### Compilando automaticamente

Uma coisa que gosto de fazer é configurar o script Ruby `watchr` para monitorar
as modificações e ir compilando à medida que se edita o arquivo `.tex`.

Instalar:

    gem install watchr

Executar:

    watchr -e 'watch("(.*)\.tex$") { |f| system("make") }'
