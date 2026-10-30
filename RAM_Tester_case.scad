/*
Tray for the thru-hole version of the 
github.com/tops4u/Ram-Tester project

By Robert Niles (goofoffbert)
GNU GPL 3.0
*/



difference() {
    difference() {
        cube([63,69,10]);
        translate([2,2,2])
        cube([59,65,10]);
    }
    
    // usb connector cutout
    color("blue")
    translate([-1,29,5])
    cube([4,10,6]);

    // handle cutout
    color("red")
    translate([-1,50,11])
    rotate([0,90,0]) {
        resize([6,8,4])
        cylinder(h=1,r=14);
    }
}


// stand-offs
//bottom right
translate([53,63,2])
cube([2,4,2]);
//top right
translate([12,63,2])
cube([2,4,2]);
// top left
translate([18,2,2])
cube([2,4,2]);
// bottom left
translate([55,2,2])
cube([2,4,2]);


// CLIPS
// top side
translate([2,14,6])
rotate([180,-90,90]) {
    linear_extrude(height = 5){
        polygon(points=[[0,0],[0,2],[4,0]], paths=[[0,1,2]],convexity=10);
    }
}

translate([2,54,6])
rotate([180,-90,90]) {
    linear_extrude(height = 5){
        polygon(points=[[0,0],[0,2],[4,0]], paths=[[0,1,2]],convexity=10);
    }
}

//bottom side
translate([61,10,6])
rotate([180,-90,270]) {
    linear_extrude(height = 5){
        polygon(points=[[0,0],[0,2],[4,0]], paths=[[0,1,2]],convexity=10);
    }
}

translate([61,54,6])
rotate([180,-90,270]) {
    linear_extrude(height = 5){
        polygon(points=[[0,0],[0,2],[4,0]], paths=[[0,1,2]],convexity=10);
    }
}

// attribution text
linear_extrude(2.5)
union() {
    translate([45,5,2])
    rotate([0,0,90]) {
        text("Tray - Thru-hole Version", size=3, font="Liberation Sans:style=Bold");
    }
    translate([50,5,2])
    rotate([0,0,90]) {
        text("github.com/tops4u/Ram-Tester", size=3, font="Liberation Sans:style=Bold");
    }
}




