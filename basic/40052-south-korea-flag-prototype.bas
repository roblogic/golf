'Rob's South Korean Flag
'
'Chipmunk Basic defaults to radians. I prefer degrees.
'Co-ordinates of the canvas start at the top left (0,0).
'The centre of the flag, henceforth _C_, is at (225,150).
'Rotations begin from the bottom of the circle!
' 0° = bottom, 90° = right, 180° = top, 270° = left.
graphics 0
option degrees

'Draw construction lines -- not in prod!
graphics cls
graphics pensetup 1,1
graphics color 65,65,65
graphics rect 0,0,450,300
graphics moveto 0,0
graphics lineto 450,300
graphics moveto 0,300
graphics lineto 450,0
'Cirles about the centre, _C_
graphics moveto 225,150
graphics color 0,0,0
graphics circle 150
graphics circle 80
'graphics pensetup 2,2  '--I use thicker pen in production to fill in gaps

'Call the circle routine in sequence, to get the yin-yang effect
for i=56 to 236 step 8                  'rotate about _C_, from 56° to 236°
    graphics color 78,5,19:p(i)         'red
    graphics color 0,20,47:p(i+180)     'blue
next

'Rectangles, again we rotate around _C_.
graphics color 0,0,0
s(236.5,1):s(56.5,1)    '--upper left (236°) & lower right (56°) rectangles
s(123.5,-1):s(303.5,-1) '--upper right (123°) & lower left (303°) rectangles

'Circles around the centre of the flag (225,150)
sub p(a)
    x=225+sin(a)*37
    y=150+cos(a)*37
    graphics moveto x,y '--TODO golf this by removing x,y
    graphics circle 73
return

'Rectangles are constructed from 11 line segments of width 2.
'We first locate the diagonals using sin() and cos(). 
'  i,j represent distance from centre. 
'  x,y represent points along the diagonal.
'We then add and subtract a fixed number of pixels (calculated on paper) 
'from (x,y) to draw the line segments.
sub s(c,f)  
    'draw little circles to show the location we begin from -- not in prod!
    graphics moveto 225+sin(c)*112,150+cos(c)*112 
    graphics circle 9
    for i=112 to 152 step 20
        for j=i to i+11 step 3
            x=225+sin(c)*j
            y=150+cos(c)*j
            graphics moveto x-20.8,y+31.2*f
            graphics lineto x+20.8,y-31.2*f
        next j
    next i
return

'Delete bits of the rectangles using a thicker pen size.
graphics pensetup 6,6
graphics color 100,100,100
graphics moveto 317,210
graphics lineto 365,242

graphics moveto 316,89
graphics lineto 329,81
graphics moveto 364,57
graphics lineto 349,66

graphics moveto 120,220
graphics lineto 104,230
