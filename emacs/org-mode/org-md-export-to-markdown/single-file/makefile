output.md: input.org
	emacs $< --batch -f org-md-export-to-markdown -f save-buffer
.PHONY: clean
clean:
	rm *.md
