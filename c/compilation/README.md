# [Compilation 編譯](https://hackmd.io/@MVMC-lab/BJnlxNwVr/%2F3lBszMXaTs-5JD2mkeIR8w)

本範例來源[Compilation 編譯](https://hackmd.io/@MVMC-lab/BJnlxNwVr/%2F3lBszMXaTs-5JD2mkeIR8w)

# 補充說明

## ex01.s

這段組合語言是一個簡單的C程序的組合語言實現。它的作用是將變量設置為1，然後將其增加1，最後返回0。這段組合語言的其他部分是程序的元數據，如文件名、函數名、堆棧框架等等。¹

來源: 與 Bing 的交談， 2024/1/26
(1) [組合語言 - 維基百科，自由的百科全書](https://zh.wikipedia.org/zh-tw/%E7%B5%84%E5%90%88%E8%AA%9E%E8%A8%80)
(2) [組合語言零基礎入門學習筆記（一） - IT人](https://iter01.com/547102.html)
(3) [組合語言 - HackMD](https://hackmd.io/@5JnCjUS5R7aTuTEwSNHFPw/SyRuZwrR2)

## 指令 'addl $1, -4(%rbp)' 

'addl $1, -4(%rbp)' 是一條組合語言指令，它的作用是將-4(%rbp)的值加1。在這裡，%rbp是堆棧框架指針，-4(%rbp)是一個變量，它的值被存儲在堆棧框架中。這條指令的意思是：將-4(%rbp)的值加1，然後將結果存儲回-4(%rbp)中。¹²³

在這裡，%eax是一個寄存器，它被用來存儲返回值。在這個程序中，這條指令的作用是將0寫入%eax中，然後返回。這樣，這個程序的作用就是返回0。¹

來源: 與 Bing 的交談， 2024/1/26
(1) [计算机原子（atomic）操作的实现原理解析 - 知乎](https://zhuanlan.zhihu.com/p/649646816)
(2) [并发原理 — CPU原子性指令（一） addl指令-CSDN博客](https://blog.csdn.net/tianxingzhe37/article/details/126965131)
(3) [程序员C语言快速上手——基础篇（三）-腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/1450940)
(4) [汇编 - 理解函数调用栈 - 简书](https://www.jianshu.com/p/758472ae08fa)

## $0, $1 代表什麼?

在這段組合語言中，$0和$1是兩個特殊的寄存器，它們用於存儲函數的參數。在這個程序中，由於main函數沒有參數，因此這兩個寄存器都沒有被使用。¹²³

來源: 與 Bing 的交談， 2024/1/26
(1) [$ - 維基百科，自由的百科全書](https://zh.wikipedia.org/zh-tw/$)
(2) Linux中的$符号的三种常见用法_linux $-CSDN博客. https://blog.csdn.net/weixin_37766087/article/details/99974385.
(3) Linux中 $0 $1 $# $@ $* $? 含义_linux中$0,$1各代表什么意思-CSDN博客. https://blog.csdn.net/l_liangkk/article/details/105649018.
(4) Linux中变量$#,$@,$0,$1,$2,$*,$$,$?的含义 - jihite - 博客园. https://www.cnblogs.com/kaituorensheng/p/4002697.html.
(5) undefined. https://zh.wikipedia.org/zh-tw/.

## ret 是什麼?


'ret' 是一条汇编指令，它的作用是从函数中返回。在这个程序中，这条指令的作用是将%eax寄存器中的值作为返回值返回给调用者。¹²³

來源: 與 Bing 的交談， 2024/1/26
(1) 何謂REt?有何作用? | HP® 支援. https://support.hp.com/tw-zh/document/c00733081.
(2) 在微控制器中ret和reti分別是什麼返回指令. https://www.diklearn.com/a/202101/15303.html.
(3) 必要收益率 - MBA智库百科. https://wiki.mbalib.com/zh-tw/%E5%BF%85%E8%A6%81%E6%94%B6%E7%9B%8A%E7%8E%87.
(4) ret-中文, ret-中文意思 - 查查綫上翻譯. https://tw.ichacha.net/ret-.html.


## x86是幾位元?

x86是一種指令集架構，最早由Intel於1978年推出，最初的8086處理器是16位元微處理器。x86架構於1985年推出的80386中首度出現32位元架構，之後一系列的處理器表示了32位元架構的細微改進，直到2003年AMD對於這個架構發展了64位元的擴充，並命名為AMD64。後來英特爾也推出了與之相容的處理器，並命名為Intel 64。兩者一般被統稱為x86-64或x64，開創了x86的64位元時代。¹²³

來源: 與 Bing 的交談， 2024/1/26
(1) x86 - 維基百科，自由的百科全書. https://zh.wikipedia.org/zh-tw/X86.
(2) 要看自己電腦是幾位元的要從哪裡看？ - iT 邦幫忙::一起幫忙解決難題，拯救 IT 人的一天. https://ithelp.ithome.com.tw/questions/10036033.
(3) 判斷您的電腦執行的是 32 位元版本或 64 位元版本的 Windows 作業系統 - Microsoft Support. https://support.microsoft.com/zh-hk/office/%E5%88%A4%E6%96%B7%E6%82%A8%E7%9A%84%E9%9B%BB%E8%85%A6%E5%9F%B7%E8%A1%8C%E7%9A%84%E6%98%AF-32-%E4%BD%8D%E5%85%83%E7%89%88%E6%9C%AC%E6%88%96-64-%E4%BD%8D%E5%85%83%E7%89%88%E6%9C%AC%E7%9A%84-windows-%E4%BD%9C%E6%A5%AD%E7%B3%BB%E7%B5%B1-aac162a1-0cb3-46f2-888f-2f22897396ce.
(4) iT自救術─x86和x64到底有什麼差異？ | iThome. https://www.ithome.com.tw/tech/56880.

## 8086 有幾個寄存器?

8086 CPU 共有 14 個寄存器，且均為 16 位。這些寄存器按照一定方式分為通用寄存器、控制寄存器和段寄存器。通用寄存器包括 AX、BX、CX 和 DX，它們可以暫存一般性的數據。控制寄存器包括 IP 和 FLAG，它們用於控制程序的執行。段寄存器包括 CS、DS、SS 和 ES，它們用於存儲程序的段地址。具體而言，這 14 個寄存器分別是：AX、BX、CX、DX、SP、BP、SI、DI、IP、FLAG、CS、DS、SS 和 ES。¹²³

來源: 與 Bing 的交談， 2024/1/26
(1) x86汇编之——8086寄存器讲解 - 知乎. https://zhuanlan.zhihu.com/p/115915986.
(2) 寄存器（8086CPU）概述与作用-CSDN博客. https://blog.csdn.net/tju_zxl/article/details/128766360.
(3) 8086CPU各寄存器及其简介_8086cpu的dx-CSDN博客. https://blog.csdn.net/weixin_40913261/article/details/90762210.

## 80386 有幾個寄存器


80386 CPU 共有 14 個寄存器，且均為 32 位元。這些寄存器按照一定方式分為通用寄存器、控制寄存器和段寄存器。通用寄存器包括 EAX、EBX、ECX 和 EDX，它們可以暫存一般性的數據。控制寄存器包括 EIP 和 EFLAGS，它們用於控制程序的執行。段寄存器包括 CS、DS、SS 和 ES，它們用於存儲程序的段地址。具體而言，這 14 個寄存器分別是：EAX、EBX、ECX、EDX、ESI、SDI、EBP、ESP、EIP、EFLAGS、CS、DS、SS 和 ES。¹

來源: 與 Bing 的交談， 2024/1/26
(1) Registers of 80386 Microprocessor - EEEGUIDE.COM. https://www.eeeguide.com/registers-of-80386-microprocessor/.
(2) Register of 80386 | PPT - SlideShare. https://www.slideshare.net/aviban/register-of-80386.
(3) 80386 Programmer's Reference Manual -- Section 4.1 - Massachusetts Institute of Technology. https://pdos.csail.mit.edu/6.828/2018/readings/i386/s04_01.htm.
