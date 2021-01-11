//Top Akslen, tandhjulet sidder på. 
//I enden ved 0, er der udhulet så vores steppermotor kan sidde og dreje akslen. 
//I modsatte var ambitionen at vi ville have aklen til at rotere på stativet, deraf cylinderen i toppen. Men vi endte med sætte et sæm ind igennem.


//Grunden til de skæve tal er at det er nogle mål vi har fundet, til steppermotoren. så shaftet sad så præcist som muligt på steppermotoren. 
module squres() {
    color("green") translate([-4.95,0,3]) 
    cube([5.9,5.9,15], center = true);
    color("red") translate([4.95,0,3]) 
    cube([5.9,5.9,15], center = true);
}

module motor() {
difference() {
    color("blue") cylinder(h = 20, r = 2.95, center = true, $fn = 32); 
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
cylindertop();


//Alt Herunder er kun support til print, da vi  gerne ville printe den stående lodret

color("green") translate([7.5,0,0]) 
cube([10,20,1], center = true);

color("green") translate([-7.5,0,0]) 
cube([10,20,1], center = true);
		
color("green") translate([0,8.5,0]) 
cube([20,10,1], center = true);
color("green") translate([0,-8.5,0]) 
cube([20,10,1], center = true);



