# This Makefile generates files for printing SCAD documents
# Copyright (C) 2016  Kenneth Barbour | kenbarbour.com
# License: GNU GPL v3 (or later)
## make all		Generate STL for each SCAD file

## SCAD Compiler
SCADC?=openscad

STL_TARGETS = $(patsubst %.scad,%.stl,$(filter-out $(wildcard _*.scad),$(wildcard *.scad)))

.PHONY: all models clean
all: models
models: $(STL_TARGETS)

%.stl: %.scad
	$(SCADC) -o $@ $<

clean:
	rm -f *.stl
