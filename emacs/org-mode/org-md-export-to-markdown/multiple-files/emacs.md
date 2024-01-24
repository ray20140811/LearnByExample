
# Table of Contents

1.  [The Emacs Editor](#org7a41e2d)
    1.  [The Organization of the Screen](#org64c8164)
        1.  [Point](#orga126f73)
        2.  [The Echo Area](#orgf348ced)
    2.  [Kinds of User Input](#org50d300a)


<a id="org7a41e2d"></a>

# The Emacs Editor


<a id="org64c8164"></a>

## The Organization of the Screen

On a graphical display, such as on GNU/Linux using the X Window System, Emacs occupies a graphical window. On a text terminal, Emacs occupies the entire terminal screen. We will use the term frame to mean a graphical window or terminal screen occupied by Emacs. Emacs behaves very similarly on both kinds of frames. It normally starts out with just one frame, but you can create additional frames if you wish (see Frames and Graphical Displays).

-   [Point](#orga126f73)
-   The Echo Area
-   The Mode Line
-   The Menu Bar


<a id="orga126f73"></a>

### Point

The cursor in the selected window shows the location where most editing commands take effect, which is called point2. Many Emacs commands move point to different places in the buffer; for example, you can place point by clicking mouse button 1 (normally the left button) at the desired location.


<a id="orgf348ced"></a>

### The Echo Area

The line at the very bottom of the frame is the echo area. It is used to display small amounts of text for various purposes.


<a id="org50d300a"></a>

## Kinds of User Input

GNU Emacs is primarily designed for use with the keyboard. While it is possible to use the mouse to issue editing commands through the menu bar and tool bar, that is usually not as efficient as using the keyboard.

