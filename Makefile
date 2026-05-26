.POSIX:

VIM := vim

SRCS := autoload/iceberg/palette/dark.vim autoload/iceberg/palette/light.vim \
	src/iceberg.vim

TARGETS := autoload/airline/themes/iceberg.vim \
	   autoload/lightline/colorscheme/iceberg.vim colors/iceberg.vim

.PHONY: all
all: $(TARGETS)

$(TARGETS): $(SRCS)
	$(VIM) -N -e -s \
		-c 'source autoload/iceberg/palette/dark.vim' \
		-c 'source autoload/iceberg/palette/light.vim' \
		-c 'cd src' \
		-c 'source iceberg.vim' \
		-c 'q'
