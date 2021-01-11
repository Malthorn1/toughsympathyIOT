//Hullet til Bottom Gear
 module stack() {   
difference(){
   cylinder(h=80, r=8.04, $fn = 4); 
}
} 

//Hullet til Top gear
/*
 module stack() {   
difference(){
   cylinder(h=80, r=6.05, $fn = 4); 
}
}
	*/ 	


module gr_1(n=0,thk=0){

    r = n*12;  //Radius af cirkel
  
module tooth(){
    sz = 10; //Bredden af tændernes kontakt til cirkel
    sx = 10; //bredden af tændernes ender
    th = thk; //TH er Tændernes højde, ved at lave dem til THK bliver det til samme højde som tandhjulet. 
    of = 20;  //Længden af tænderne
 
        
    hull(){
//Placering af Tandhjulets tænder på hjulet. XYZ
    translate([0,0,th/2])
    cube([sz,sz,th],center=true); 
//Placering af Tandhjulets tænders spidser. XYZ
    translate([of,0,th/2])
    cube([sx,sx,th],center=true);}
    }

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


