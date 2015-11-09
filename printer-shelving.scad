width = 1220;
height = 2440;
depth  = 700;

shelfheight = 700;

shelf1 = 400;
shelf2 = shelf1 + shelfheight + 63;
shelf3 = shelf2 + shelfheight + 63;

top = height - 63;

color("red"){
    // cls (63 x 38) left
    translate([0,depth-63,0]) { cube([38,63,height]); } // 1 x 2.4m
    translate([0,0,0])        { cube([38,63,height]); } // 1 x 2.4m

    // cls (63 x 38) right
    translate([width - 38,depth-63,0]) { cube([38,63,height]); } // 1 x 2.4m
    translate([width - 38,0,0])        { cube([38,63,height]); } // 1 x 2.4m
}

// Shelf 1
translate([0,63,shelf1])          { cube([width,38,63]); } // width
translate([38,0,shelf1])          { cube([38,depth,63]); } // width
translate([0,depth-63-38,shelf1]) { cube([width,38,63]); } // depth
translate([width-38-38,0,shelf1]) { cube([38,depth,63]); } // depth
translate([0,0,shelf1+63])        { cube([width,depth,12]); } // shelf top

// 2 x width = 2.4m
// 2 depth = 1.4m

// Shelf2
translate([0,63,shelf2])          { cube([width,38,63]); } // width
translate([0,depth-63-38,shelf2]) { cube([width,38,63]); } // width
translate([38,0,shelf2])          { cube([38,depth,63]); } // depth
translate([width-38-38,0,shelf2]) { cube([38,depth,63]); } // depth
translate([0,0,shelf2+63])        { cube([width,depth,12]); } // shelf top
// 2 x width = 2.4m
// 2 depth = 1.4m

// Shelf3
translate([0,63,shelf3])          { cube([width,38,63]); } // width
translate([0,depth-63-38,shelf3]) { cube([width,38,63]); } // width
translate([38,0,shelf3])          { cube([38,depth,63]); } // depth
translate([width-38-38,0,shelf3]) { cube([38,depth,63]); } // depth
translate([0,0,shelf3+63])        { cube([width,depth,12]); } // shelf top
// 2 x width = 2.4m
// 2 depth = 1.4m

// Top
translate([0,63,top])          { cube([width,38,63]); } // width
translate([0,depth-63-38,top]) { cube([width,38,63]); } // width
translate([38,0,top])          { cube([38,depth,63]); } // depth
translate([width-38-38,0,top]) { cube([38,depth,63]); } // depth
translate([0,0,top+63])        { cube([width,depth,12]); } // shelf top

// 2 x width = 2.4m
// 2 depth = 1.4m

// 4 x 2  = 8 lengths of .7m.
// 8 / 3 = 2.667m which is 3 x 2.4

// 

// Total of 11 x 2.4m
// 2 x 2.4 x 1.2 ply sheets
