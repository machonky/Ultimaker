;The MIT License (MIT)
;
;Copyright (c) 2014 macrobert.com
;
;Permission is hereby granted, free of charge, to any person obtaining a copy
;of this software and associated documentation files (the "Software"), to deal
;in the Software without restriction, including without limitation the rights
;to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;copies of the Software, and to permit persons to whom the Software is
;furnished to do so, subject to the following conditions:
;
;The above copyright notice and this permission notice shall be included in
;all copies or substantial portions of the Software.
;
;THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;THE SOFTWARE.
G21        ;metric values
G90        ;absolute positioning
M82        ;set extruder to absolute mode
M107       ;start with the fan off
M117 Homing all axes
G28 X0 Y0  ;move X/Y to min endstops
G28 Z0     ;move Z to min endstops
;
G1 Z15.0 F9000 ;move the platform down 15mm
G1 F9000 X0 Y30 Z15 ;move to the front left test point
M25
G1 F9000 Z0 ;down and wait
M117 Adjust Front-left Z screw
G1 F9000 X0 Y170 Z15
M25
G1 F9000 Z0
M117 Adjust Back-left Z screw
G1 F9000 X200 Y170 Z15
M25
G1 F9000 Z0
M117 Adjust Back-right Z screw
G1 F9000 X200 Y20 Z15
M25
G1 F9000 Z0
M117 Adjust Front-right Z screw
;
G1 F9000 X0 Y30 Z15
G1 F9000 X0 Y30 Z0
G4 S3
M117 Verify Front-left Z0-position
G1 F9000 X0 Y170 Z15
G1 F9000 X0 Y170 Z0
G4 S3
M117 Verify Back-left Z0-position
G1 F9000 X200 Y170 Z15
G1 F9000 X200 Y170 Z0
G4 S3
M117 Verify Back-right Z0-position
G1 F9000 X200 Y20 Z15
G1 F9000 X200 Y20 Z0
G4 S3
M117 Verify Front-right Z0-position
G1 F9000 X200 Y20 Z15
G1 F9000 X0 Y0 Z15
M117 Homing
G28 X0 Y0  ;move X/Y to min endstops
G28 Z0     ;move Z to min endstops
G1 Z200
