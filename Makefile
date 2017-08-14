SOURCES:=${wildcard *.md}
TEXOUT:=${SOURCES:%.md=%.pdf}

%.pdf: %.md
	pandoc -o $@ $<

latex: $(TEXOUT)

all: latex

clean:
	echo rm $(TEXOUT)
	rm $(TEXOUT)

.PHONY: all clean

.SUFFIXES: .md .pdf
