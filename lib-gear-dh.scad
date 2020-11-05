
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


 gear(9,20,10);  //(antal tænder, tandhjulets højde, tandhjulets scalering) 

