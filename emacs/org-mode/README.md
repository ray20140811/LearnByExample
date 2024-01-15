
# Table of Contents

1.  [How to use Emacs org-mode?](#orgfa904b0)
    1.  [How to export an org file to markdown file?](#org5fdc928)
    2.  [How to export org file to markdown by shell ?](#org5e986ee)
    3.  [How to use makefile to export org file to markdown?](#orgb81abf5)
    4.  [How to convert multiple org files to markdown?](#org88866dd)
    5.  [How to convert multiple org files which located under current directory to markdown ?](#orgc1faa2d)


<a id="orgfa904b0"></a>

# How to use Emacs org-mode?


<a id="org5fdc928"></a>

## How to export an org file to markdown file?

Use `org-md-export-to-markdown` command to export to a text file with Markdown syntax.


<a id="org5e986ee"></a>

## How to export org file to markdown by shell ?

Use `emacs input.org --batch -f org-md-export-to-markdown -f save-buffer`  command to export an org file to markdown


<a id="orgb81abf5"></a>

## How to use makefile to export org file to markdown?

    output.md: input.org
        emacs $< --batch -f org-md-export-to-markdown -f save-buffer
    
    .PHONY: clean
    clean:
        rm -f output.md


<a id="org88866dd"></a>

## How to convert multiple org files to markdown?

    ORG_FILES := $(wildcard *.org)
    MD_FILES := $(patsubst %.org,%.md,$(ORG_FILES))
    
    all: $(MD_FILES)
    
    %.md: %.org
        emacs $< --batch -f org-md-export-to-markdown -f save-buffer
    
    .PHONY: clean
    clean:
        rm -f $(MD_FILES)


<a id="orgc1faa2d"></a>

## How to convert multiple org files which located under current directory to markdown ?

如何用 makefile 將當前目錄下的子目錄下的多個 org file 轉換 成多個 markdown 使用 \`emacs input.org &#x2013;batch -f org-md-export-to-markdown -f save-buffer\`指令?

    ORG_FILES := $(shell find . -name '*.org')
    MD_FILES := $(patsubst %.org,%.md,$(ORG_FILES))
    
    all: $(MD_FILES)
    
    %.md: %.org
        emacs $< --batch -f org-md-export-to-markdown -f save-buffer
    
    .PHONY: clean
    clean:
        rm -f $(MD_FILES)

