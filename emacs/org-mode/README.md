
# Table of Contents

1.  [How to use Emacs org-mode?](#org8e4ac17)
    1.  [How to export an org file to markdown file?](#orga253089)
    2.  [How to export org file to markdown by shell ?](#orga354c7e)
    3.  [How to use makefile to export org file to markdown?](#orgd0121e1)
    4.  [How to convert multiple org files to markdown?](#org291b210)
    5.  [How to convert multiple org files which located under current directory to markdown ?](#org4ee2211)
    6.  [org-mode如何產生類似 markdown \`\` 標記](#orgb96cb57)


<a id="org8e4ac17"></a>

# How to use Emacs org-mode?


<a id="orga253089"></a>

## How to export an org file to markdown file?

Use `org-md-export-to-markdown` command to export to a text file with Markdown syntax.


<a id="orga354c7e"></a>

## How to export org file to markdown by shell ?

Use `emacs input.org --batch -f org-md-export-to-markdown -f save-buffer`  command to export an org file to markdown


<a id="orgd0121e1"></a>

## How to use makefile to export org file to markdown?

    output.md: input.org
        emacs $< --batch -f org-md-export-to-markdown -f save-buffer
    
    .PHONY: clean
    clean:
        rm -f output.md


<a id="org291b210"></a>

## How to convert multiple org files to markdown?

    ORG_FILES := $(wildcard *.org)
    MD_FILES := $(patsubst %.org,%.md,$(ORG_FILES))
    
    all: $(MD_FILES)
    
    %.md: %.org
        emacs $< --batch -f org-md-export-to-markdown -f save-buffer
    
    .PHONY: clean
    clean:
        rm -f $(MD_FILES)


<a id="org4ee2211"></a>

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


<a id="orgb96cb57"></a>

## org-mode如何產生類似 markdown \`\` 標記

使用 `test` 可以生成類似 markdown \`test\` 

