


difference(){
    color("red")cube([5, 8, 40]);
     translate([2.5,12,-1]){
        cylinder(h=100, r=1.6, $fn=50);
    }
    translate([2.5,9.5,6]){
        cylinder(h=28   , r=5);
    }
    translate([2.5,9.5,-1]){
        cylinder(h=100, r=1.8);
    }
    translate([-2,0, 9]){
        cube([10,6,5.5]);
        }
    translate([-2,0, 25.3]){
        cube([10,6,5.5]);
        }

}    

difference(){
    translate([2.5,9.5, 0]){
        color("pink")cylinder(h=40, r=2.7, $fn=50);

    }
    translate([2.5,9.5,-1]){
        cylinder(h=100, r=1.6, $fn=50);
    }
    translate([2.5,7.5,6]){
        cylinder(h=28, r=6);
    }
    
}


translate([0, -4, 7.3]){
    cube([5,5,25]);
}
    
   

    

difference(){
    translate([2.4, -5.5, 7.3]){
    cylinder(h=25, r=2.7, $fn=50);
    }
    translate([2.4,-5.5,7.3]){
        cylinder(h=100, r=1.6, $fn=50);
    }
    

}

rotate([0,90,0]){
    translate([-24,3,5]){
        color("magenta")cylinder(h=7, r=1, $fn=50);
    }
    translate([-16,3,5]){
        color("magenta")cylinder(h=7, r=1, $fn=50);
    }

}


    


    

