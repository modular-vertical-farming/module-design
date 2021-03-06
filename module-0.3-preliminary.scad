FRONT_TILT = 40;
PLANTER_HEIGHT = 120;
    
use <MCAD/fonts.scad>

$fa = 5;

FONT = 8bit_polyfont();
FONT_X_OFFSET = FONT[0][0];
FONT_Y_OFFSET = FONT[0][1];

shellOnly = false;

rotate([90, 0, 0])
union() {
    color("whitesmoke", 1)
    difference() {
        union() {
            difference() {
                union() {
                    difference() {
                        union() {
                            hull() {
                                translate([130, 130, 0])
                                sphere(20);
                                translate([-130, 130, 0])
                                sphere(20);
                            }
                           hull() {
                                translate([130, -130, 0])
                                sphere(20);
                                translate([-130, -130, 0])
                                sphere(20);
                            }
                        }
                        translate([0, 0, -20])
                        cube([400, 400, 40], true);
                        translate([0, 30, 25])
                        cube([260, 200, 40], true);
                        difference() {
                            hull() {
                                translate([130, 130, 0])
                                sphere(17);
                                translate([-130, 130, 0])
                                sphere(17);
                                translate([130, -130, 0])
                                sphere(17);
                                translate([-130, -130, 0])
                                sphere(17);
                            }
                            translate([0, 0, -16])
                            cube([400, 400, 40], true);
                        }
                        intersection() {
                            translate([-130, -130, 0])
                            rotate([FRONT_TILT, 0, 0])
                            translate([0, 0, 7])
                            cube([260, 300, 10]);
                            translate([-150, -150, 0])
                            cube([300, PLANTER_HEIGHT, 300]);
                        }
                    }
                    //FRONT COVER
                    intersection() {
                        translate([-130, -130, 0])
                        rotate([FRONT_TILT, 0, 0])
                        translate([0, 0, 17])
                        cube([260, 300, 3]);
                        translate([-150, -150, 0])
                        cube([300, PLANTER_HEIGHT, 300]);
                    }
                    hull() {
                        difference() {
                            translate([-130, 130, 0])
                            sphere(20);
                            translate([0, 0, -20])
                            cube([400, 400, 40], true);
                            translate([0, 50, 0])
                            cube([260, 260, 40], true);
                        }
                        intersection() {
                            translate([-130, -130, 0])
                            rotate([FRONT_TILT, 0, 0])
                            translate([0, 0, 18])
                            cube([5, 300, 2]);
                            translate([-150, -160 + PLANTER_HEIGHT, 0])
                            cube([100, 10, 300]);
                        }
                        translate([-150, -150 + PLANTER_HEIGHT, 0])
                        cube([15, 10, 4]);
                    }
                    hull() {
                        difference() {
                            translate([130, 130, 0])
                            sphere(20);
                            translate([0, 0, -20])
                            cube([400, 400, 40], true);
                            translate([0, 50, 0])
                            cube([260, 260, 40], true);
                        }
                        intersection() {
                            translate([130, -130, 0])
                            rotate([FRONT_TILT, 0, 0])
                            translate([-5, 0, 18])
                            cube([5, 300, 2]);
                            translate([50, -160 + PLANTER_HEIGHT, 0])
                            cube([100, 10, 300]);
                        }
                        translate([135, -150 + PLANTER_HEIGHT, 0])
                        cube([15, 10, 4]);
                    }
                    hull() {
                        difference() {
                            translate([-130, -130, 0])
                            sphere(20);
                            translate([0, 0, -20])
                            cube([400, 400, 40], true);
                            translate([0, -50, 0])
                            cube([260, 260, 40], true);
                        }
                        intersection() {
                            translate([-130, -130, 0])
                            rotate([FRONT_TILT, 0, 0])
                            translate([0, 0, 18])
                            cube([5, 300, 2]);
                            translate([-150, -160 + PLANTER_HEIGHT, 0])
                            cube([100, 10, 300]);
                        }
                        translate([-150, -150 + PLANTER_HEIGHT, 0])
                        cube([15, 10, 4]);
                    }
                    hull() {
                        difference() {
                            translate([130, -130, 0])
                            sphere(20);
                            translate([0, 0, -20])
                            cube([400, 400, 40], true);
                            translate([0, -50, 0])
                            cube([260, 260, 40], true);
                        }
                        intersection() {
                            translate([130, -130, 0])
                            rotate([FRONT_TILT, 0, 0])
                            translate([-5, 0, 18])
                            cube([5, 300, 2]);
                            translate([50, -160 + PLANTER_HEIGHT, 0])
                            cube([100, 10, 300]);
                        }
                        translate([135, -150 + PLANTER_HEIGHT, 0])
                        cube([15, 10, 4]);
                    }
                }
                /*hull() {
                    intersection() {
                        translate([-124, -130, 0])
                        rotate([FRONT_TILT, 0, 0])
                        translate([-1, 0, 14])
                        cube([254, 290, 2]);
                        translate([-150, -150, 0])
                        cube([300, PLANTER_HEIGHT + 1, 300]);
                    }
                    translate([-145, -151 + PLANTER_HEIGHT, -1])
                    cube([290, 1, 3]);
                    translate([-145, -140, -1])
                    cube([290, 1, 3]);
                }*/
                //Repeated later. Needed to make sure it is also removed from the lower piece.
                //Drainage holes
                for (i = [-2:2]) {
                    translate([i*12, -114 + abs(i), -10])
                    rotate([-10, 0, 0])
                    cylinder(r=3, h=20);
                }
            }
            hull() {
                difference() {
                    translate([0, 0, 1])
                    union() {
                        hull() {
                            translate([120, -130, 0])
                            cube([20, 20, 1]);
                            translate([-10, -140, 0])
                            cube([20, 20, 1]);
                            translate([120, -110, 100])
                            cube([20, 20, 1]);
                            translate([-10, -120, 100])
                            cube([20, 20, 1]);
                        }
                    }
                    translate([130, -150, 0])
                    cube(100);
                    translate([-230, -150, 0])
                    cube(100);
                    intersection() {
                        translate([-150, -130, 0])
                        rotate([FRONT_TILT, 0, 0])
                        translate([0, -100, 19])
                        cube([300, 400, 100]);
                        translate([-150, -150, 0])
                        cube([300, PLANTER_HEIGHT, 300]);
                    }
                    translate([0, 0, -20])
                    cube([400, 400, 40], true);
                }
                difference() {
                    translate([130, -130, 0])
                    sphere(20);
                    translate([0, 0, -20])
                    cube([400, 400, 40], true);
                }
            }
            hull() {
                difference() {
                    translate([0, 0, 1])
                    union() {
                        hull() {
                            translate([-140, -130, 0])
                            cube([20, 20, 1]);
                            translate([-10, -140, 0])
                            cube([20, 20, 1]);
                            translate([-140, -110, 100])
                            cube([20, 20, 1]);
                            translate([-10, -120, 100])
                            cube([20, 20, 1]);
                        }
                    }
                    translate([130, -150, 0])
                    cube(100);
                    translate([-230, -150, 0])
                    cube(100);
                    intersection() {
                        translate([-150, -130, 0])
                        rotate([FRONT_TILT, 0, 0])
                        translate([0, -100, 19])
                        cube([300, 400, 100]);
                        translate([-150, -150, 0])
                        cube([300, PLANTER_HEIGHT, 300]);
                    }
                    translate([0, 0, -20])
                    cube([400, 400, 40], true);
                }
                difference() {
                    translate([-130, -130, 0])
                    sphere(20);
                    translate([0, 0, -20])
                    cube([400, 400, 40], true);
                }
            }
            difference() {
                translate([-145, -140, 0])
                cube([290, 262, 4]);
                //Drainage holes
                for (i = [-2:2]) {
                    translate([i*12, -114 + abs(i), -10])
                    rotate([-10, 0, 0])
                    cylinder(r=3, h=20);
                }
            }
            intersection() {
                translate([0, -110, -40])
                rotate([-60, 0, 0])
                difference() {
                    cylinder(r=20, r2=70, h=34);
                    translate([0, 0, -1])
                    cylinder(r=15, r2=65, h=36);
                }
                translate([0, -80, -14])
                cube([70, 100, 30], true);
            }
        }
        hull() {
            intersection() {
                union() {
                    translate([132, -132, 0])
                    sphere(13);
                    translate([-132, -132, 0])
                    sphere(13);
                }
            }
        }
        hull() {
            intersection() {
                union() {
                    translate([-140, 132, 0])
                    sphere(3);
                    translate([-140, -132, 0])
                    sphere(3);
                    translate([-140, 132, 2])
                    sphere(3);
                    translate([-140, -132, 2])
                    sphere(3);
                }
            }
        }
    }
    
    color("lime")
    translate([-128, -130, 0])
    rotate([FRONT_TILT, 0, 0])
    translate([10, 10, 18])
    cube([15, 3, 5]);
    
    if (!shellOnly) {
        color("brown")
        hull() {
            intersection() {
                translate([-124, -130, 0])
                rotate([FRONT_TILT, 0, 0])
                translate([-1, 0, 14])
                cube([254, 290, 2]);
                translate([-150, -150, 0])
                cube([300, PLANTER_HEIGHT - 3, 300]);
            }
            translate([-145, -151 + PLANTER_HEIGHT, 4])
            cube([290, 1, 3]);
            translate([-145, -140, 4])
            cube([290, 1, 3]);
        }
        
        color("green")
        for(i = [-3:3]) {
            translate([-2.5 + i * 33, -140, 10])
            rotate([FRONT_TILT / 2, 0, 0]) {
                rotate([-90, 0, 0])
                cylinder(r = 5, h = PLANTER_HEIGHT + 100);
                for(j = [-4:4]) {
                    translate([0, PLANTER_HEIGHT + 50 + j * 10])
                    rotate([0, i * 1000 + j * 100, 0])
                    rotate([-15, 0, 15])
                    cube([20, 2, 20]);
                }
            }
        }
        
        color("black")
        translate([0, -140, 0])
        rotate([FRONT_TILT - 10, 0, 0])
        rotate([0, 90, 0])
        translate([0, PLANTER_HEIGHT, -130])
        cylinder(r=3, h=260);

        color("dimgray")
        for (i = [1:4]) {
            difference() {
                translate([130, 130, i * -3])
                cylinder(r1=2.5 - 0.2 * i, r2=3.5 - 0.2 * i, h=3);
                translate([130, 130, -1 + i * -3])
                cylinder(r=1.5, h=5);
            }
        }
        color("dodgerblue")
        translate([130, 130, -1])
        sphere(r=2.5, h=3);

        color("gold") {
            translate([-130, 130, -10])
            cylinder(r=3, h=11);
            translate([-120, 130, -10])
            cylinder(r=3, h=11);
            translate([-110, 130, -10])
            cylinder(r=3, h=11);
            translate([-100, 130, -10])
            cylinder(r=3, h=11);
        }

        words = ["+", "SCL", "SDA", "-"];
        color("black")
        for (currentWord = [0:(len(words) - 1)]) {
            letters = search(words[currentWord], FONT[2], 1, 1);
            for (letter = [0:(len(letters) - 1)]) {
                rotate([0, 180, 90])
                translate([-125 + FONT_X_OFFSET * letter,
                    100 - FONT_Y_OFFSET / 2 + currentWord * 10, 0]) {
                    linear_extrude(1)
                    polygon(points = FONT[2][letters[letter]][6][0],
                            paths = FONT[2][letters[letter]][6][1]);
                }
            }
        }
        
        words2 = ["Water"];
        color("black")
        for (currentWord = [0:(len(words) - 1)]) {
            letters = search(words2[currentWord], FONT[2], 1, 1);
            for (letter = [0:(len(letters) - 1)]) {
                rotate([0, 180, 90])
                translate([-125 + FONT_X_OFFSET * letter,
                    -135]) {
                    linear_extrude(1)
                    polygon(points = FONT[2][letters[letter]][6][0],
                            paths = FONT[2][letters[letter]][6][1]);
                }
            }
        }
        
        translate([0, 140, 1])
        rotate([90, 0, 0])
        union() {
            translate([-135, 0, 0])
            color("lightgray") {
                cube([270, 15, 1]);
            }
            translate([0, 5, 1])
            for (i = [-13:13]) {
                translate([i * 10 - 2.5, 0, 0])
                led();
            }
        }
    }
}


module led() {
    color("white") {
        cube([5, 5, 2]);
    }
}
