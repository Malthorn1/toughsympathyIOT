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
    color("red") translate([(SHD+SHDF)/2,0,3]) 
   cube([SHD,SHD,SHHF], center = true);
    color("red") translate([-(SHD+SHDF)/2,0,3]) 
    cube([SHD,SHD,SHHF], center = true);
}


    

module motor() {
difference() {
    color("blue") cylinder(h = 8, r = SHD/2, center = true, $fn = 32); 
    squres();

        }



}   

module cylindertop() {
    translate([0,0,35])
       cylinder(h=60, r=4, $fn = 30); 

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

		



