$noprefix

option explicit
option explicitarray
dim explicitarray
explicitarray = 8
dim x, y, clip, a(2), smooth, ontop
screen newimage(640, 480, 32)
put 1, , x
put step(x, (y + 1)), clip
put step(x, (y + 1)), a(2) 
put step(x, (y + 1)), a(2),clip 'this is a comment
put step(x, (y + 1)), a(2),  clip and, 3
put step(x, _
   (y + 1)), _
   _
   a(2),  clip and, 3
clip = 2
screenmove
screenmove 1, 4 : screenmove middle
fullscreen
fullscreen stretch
fullscreen off, smooth
fullscreen , smooth
allowfullscreen
allowfullscreen squarepixels
_allowfullscreen all, all
allowfullscreen , off
print smooth
resize
resize on
_resize , stretch
resize off, smooth
x = resize
glrender behind
print ontop
displayorder
displayorder software rem do displayorder stuff
displayorder software  ,_
             hardware,glrender
if x then displayorder hardware1
exit while
print exit
print _exit
fps auto
fps 30
clearcolor
clearcolor none, 2
clearcolor , 1
maptriangle anticlockwise seamless (1, 1)-(2, 2)-(3, 3), 4 to (1, 1, 1)-(2, 2, 2)-(3, 3, 3), 1 + (4 * 2) / 3, smoothstretched
maptriangle clockwise (1, 1)-(2, 2)-(3, 3) to (1, 1)-(2, 2)-(3, 3), , smoothshrunk
maptriangle (1, 1)-(2, 2)-(3, 3) to (1, 1)-(2, 2)-(3, 3)
print smoothshrunk
depthbuffer lock
depthbuffer clear, 3
clear x
width 40
print width(x)
shell
shell "asdf"
shell dontwait
shell hide
shell dontwait "foo"
shell hide "bar"
shell dontwait hide "foo"
shell hide dontwait "bar"
capslock toggle
scrolllock toggle
numlock toggle
consolecursor
consolecursor show
consolecursor hide
consolecursor , 2
data 1, hello, putimage, 3
