// 28BYJ-48 from RGriffoGoes 
// at http://www.thingiverse.com/thing:204734
// named and measured dimensions, and
// added details by J.Beale 21 July 2014

MBH = 18.8;   // motor body height
MBD = 28.25;  // motor body OD


SHD = 5.9;   // motor shaft OD
SHDF = 4.0;   // motor shaft diameter, across flats
SHHF = 6.0;   // motor shaft flats height, or depth in from end
SHH = 9.75;   // height of shaft above motor body 




// =========================================================
eps = 0.05;   // small number to avoid coincident faces


module squres() {
    color("green") translate([-(SHD+SHDF)/2,0,3]) 
    cube([SHD,SHD,15], center = true);
    color("red") translate([(SHD+SHDF)/2,0,3]) 
    cube([SHD,SHD,15], center = true);
}


    

module motor() {
difference() {
    color("blue") cylinder(h = 20, r = SHD/2, center = true, $fn = 32); 
    squres();

        }



}   

module cylindertop() {
 difference() {
    translate([0,0,35])
    cylinder(h=64.9, r=4, $fn = 30); 
    translate ([0, 0, 90])
    cylinder(h=10, r=2, $fn = 30); 
    
 }
}


 module stack() {   
difference(){
   cylinder(h=80, r=6, $fn = 4); 
   motor();
}
}
stack();

difference() {
    cylindertop();
    stack();
    
  
 

}	

color("green") translate([7.5,0,0]) 
cube([10,20,1], center = true);

color("green") translate([-7.5,0,0]) 
cube([10,20,1], center = true);
		
color("green") translate([0,8.5,0]) 
cube([20,10,1], center = true);
color("green") translate([0,-8.5,0]) 
cube([20,10,1], center = true);



