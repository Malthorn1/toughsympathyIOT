
/***********************************
Puoblic domain GPL licence
by Dirk Hamm 05/07/2020
Montbazin - France
roberto.hamm@sfr.fr
http://robotix.ah-oui.org
************************************
gear(
nb-teeth,
thikness,
scale);
***********************************/

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

/*
//Hullet til Bottom Gear
 module stack() {   
difference(){
   cylinder(h=80, r=8.04, $fn = 4); 
   motor();
}
} */

//Hullet til Top gear
 module stack() {   
difference(){
   cylinder(h=80, r=6.05, $fn = 4); 
   motor();
}
}
		





module gr_1(n=0,thk=0){

    r = n*12;  //Radius af cirkel
  
module tooth(){
    sz = 10; //Bredden af tændernes kontakt til cirkel
    sx = 10; //bredden af tændernes ender
    th = thk;
    of = 20;  //Længden af tænderne
 
        
    hull(){
    translate([0,0,th/2])
    cube([sz,sz,th],center=true); 
    translate([of,0,th/2])
    cube([sx,sx,th],center=true);}}

    for(i=[0:n]) //n is number of teeth
    rotate([0,0,i*360/n])
    translate([r,0,0]) 
    tooth();
    
    cylinder(r=r,h=thk);}

module gear(n=0,thk=0,sc=0){
    sc = sc*0.0204;
    scale(sc)
    gr_1(n=n,thk=thk);}


difference() {
    gear(9,25,10);  //(antal tænder, tandhjulets højde, tandhjulets scalering) 
    translate([0,0,-10])
    stack();
}


