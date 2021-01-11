//Akslen som bund tandhjulet sidder på, der er gjort plads til kuglelejer i begge ender for at det kunne dreje så gnidningsfrit som muligt 

module stack() {   
difference(){
    translate([0,0,2])
   cylinder(h=95, r=8, $fn = 4); 
   cylinder(h=1000, r=4.15, $fn=32); 
}
}
stack();


