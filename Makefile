.PHONY: examples

CC = xelatex
CV_DIR = .
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x, cv, $x.pdf)

cv.pdf: $(CV_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(CV_DIR) $<
clean:
	rm -rf $(CV_DIR)/*.pdf
