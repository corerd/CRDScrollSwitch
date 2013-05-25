CRDScrollSwitch for iOS
=======================

The `CRDScrollSwitch` inherits from `UIScrollView` and is a drop in replacement
for `UISwitch` that allows to user to customize its appearance.
 
 
Extra features
--------------
- Custom text label for ON state.
- Custom text label for OFF state.
- Custom image representing the switch’s thumb knob and ON/OFF areas.
 
 
Usage
-----
To use it, add the files in the `Classes` folder to your project.

A default image is supplied in the file `CRDScrollSwitch.png`.

This image is moved back and forth over the ScrollView
to show the switch’s OFF and ON parts alternately.
 
The image dimensions define the ScrollView frame in the following way,
whereas the thumb knob radius is given by image.height/2:
- ScrollView.height = image.height
- ScrollView.width = image.width/2 + thumbKnobRadius
 
For example, the supplied `CRDScrollSwitch.png` image has 150 × 28 pixels
dimension, then the ScrollView frame size is 89 x 28 pixels.
 
Changing the image, resizes the control frame to whatever you want.

In the `Gimp` folder you can find the GIMP image file from which
the default image has been converted.
 
 
CREDITS
-------
[UISwitch - change from on/off to yes/no]
( http://stackoverflow.com/a/10437261 )
 
[Creating a Custom UISwitch]
( http://www.raywenderlich.com/23424/photoshop-for-developers-creating-a-custom-uiswitch )


The MIT License
---------------
Copyright (c) 2013 Corrado Ubezio

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.