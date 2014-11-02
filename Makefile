MAINFILE = documento
FILES = $(MAINFILE).tex `ls $(MAINFILE)-*.tex | grep -v "diff"`

LATEXPDF=rubber
LATEXPDF_P=--pdf

LATEXRTF=latex2rtf
LATEXRTF_P=-f0

LATEXDIFF=latexdiff-git
LATEXDIFF_P=

export TEXMFHOME:=./texmf

.PHONY: all pdf rtf diff

all: pdf

pdf:
	$(LATEXPDF) $(LATEXPDF_P) $(MAINFILE).tex

rtf: pdf
	$(LATEXRTF) $(LATEXRTF_P) $(MAINFILE).tex

diff:
	$(LATEXDIFF) $(LATEXDIFF_P) $(HASH) $(FILES)
	$(LATEXDIFF) $(LATEXDIFF_P) $(HASH) $(FILES)
