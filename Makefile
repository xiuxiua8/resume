NAME := resume-cn

.PHONY: all clean

# 编译 PDF 并生成 README 中展示的预览图
all: $(NAME).pdf preview/$(NAME).png

$(NAME).pdf: $(NAME).tex cv.cls
	xelatex -interaction=nonstopmode -halt-on-error $(NAME).tex
	@pages=$$(pdfinfo $@ | awk '/^Pages:/ {print $$2}'); \
	if [ "$$pages" != "1" ]; then echo "错误：简历共 $$pages 页，应控制在 1 页"; exit 1; fi

preview/$(NAME).png: $(NAME).pdf
	@mkdir -p preview
	pdftoppm -png -r 150 -singlefile $< preview/$(NAME)

clean:
	rm -f *.aux *.log *.out *.synctex.gz
