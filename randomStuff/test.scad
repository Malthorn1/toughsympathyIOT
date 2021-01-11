cubeWidth = 153.3; 
cubeLength = 260;
cubeHeigth = 5; 



difference() {
    
cube([cubeWidth,cubeLength,cubeHeigth]);
    translate([94.3,48,0])
    cylinder(d=62, h=20);
    
    translate([45,180,0])
    cube([30,40,6]);
    
    translate([95,180,0])
    cube([30,40,6]);
    
    
    translate([3,255,0])
    cube([148.3,10,10]);
    
}
