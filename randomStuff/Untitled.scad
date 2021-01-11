// 28BYJ-48 from RGriffoGoes 
// at http://www.thingiverse.com/thing:204734
// named and measured dimensions, and
// added details by J.Beale 21 July 2014

MBH = 18.8;   // motor body height
MBD = 28.25;  // motor body OD
SBD = 9.1;    // shaft boss OD
SBH = 1.45;   // shaft boss height above motor body
SBO = 7.875;  // offset of shaft/boss center from motor center
SHD = 4.93;   // motor shaft OD
SHDF = 3.0;   // motor shaft diameter, across flats
SHHF = 6.0;   // motor shaft flats height, or depth in from end
SHH = 9.75;   // height of shaft above motor body 

MBFH = 0.7;   // height of body edge flange protruding above surface
MBFW = 1.0;   // width of edge flange
MBFNW = 8;    // width of notch in edge flange
MBFNW2 = 17.8;  // width of edge flange notch above wiring box

MHCC = 35.0;  // mounting hole center-to-center
MTH  = 0.8;   // mounting tab thickness
MTW  = 7.0;   // mounting tab width
WBH  = 16.7;  // plastic wiring box height
WBW  = 14.6;  // plastic wiring box width
WBD  = 31.3;  // body diameter to outer surface of wiring box

WRD = 1.0;     // diameter of electrical wires
WRL = 30;      // length of electrical wires
WRO = 2.2;		// offset of wires below top motor surface

// =========================================================
eps = 0.05;   // small number to avoid coincident faces



  difference(){
      
  translate([3,3,6]){
    cylinder(h=40, r=2);
}
    union(){
		translate([SBO,0,-SHH])	// motor shaft
        difference() {
			color("blue") cylinder(h = MBH, r = SHD/2, center = true, $fn = 32);
				// shaft flats
		   color("red") translate([(SHD+SHDF)/2,0,-(eps+MBH-SHHF)/2]) 
				cube([SHD,SHD,SHHF], center = true);
		   color("red") translate([-(SHD+SHDF)/2,0,-(eps+MBH-SHHF)/2]) 
				cube([SHD,SHD,SHHF], center = true);
        }
		}

		}
	