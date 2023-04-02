/*
 * 30mm to Olympic Barbell (50mm) adapter 
 * Upper stopper ring
 *
 * Hantelscheibe:
 *  - Breite: 75 mm
 *
 *
 * Olympic barbell weight ending specs:
 *  - 49.4 mm - 49.56 mm diameter
 *  - 431.79 mm length
 *  - 41.27 mm stopper length
 */
 
$fn = 128;
stopper_height = 5;
outer_diameter = 50.1;
stopper_diameter = 76;

/* produces the wrong size
difference() {
    linear_extrude(stopper_height) circle(stopper_diameter);
    linear_extrude(stopper_height) circle(outer_diameter);
}
*/

translate([0,0,0]) {
    difference() {
        translate([0,0,0]) cylinder(d=stopper_diameter, h=stopper_height, center=true);
        translate([0,0,0]) cylinder(d=outer_diameter, h=stopper_height, center=true);
    }    
}
