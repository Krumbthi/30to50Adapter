/*
 * 30mm threaded to Olympic Barbell (2 inch / 50mm) adapter 
 * Double check dimensions of your barbell dimensions before printing.
 * This is 10 hours+ print, and it is a tight fit for *my* barbell:
 * My barbell screw:
 *  - 30 mm external diameter
 *
 * Hantelscheibe:
 *  - Breite: 75 mm
 *
 *  - 6.5 mm pitch
 *  - 3.5 mm wide
 *  - 1.5 mm deep
 *
 * Olympic barbell weight ending specs:
 *  - 49.4 mm - 49.56 mm diameter
 *  - 431.79 mm length
 *  - 41.27 mm stopper length
 */

$fn=128;
inner_diameter = 30.2;
outer_diameter = 50;
stopper_diameter = 76;
stopper_height = 5;
weight_width = 75;                  // mm
adapter_height = 2 * stopper_height + weight_width;    // mm

difference() {
    echo("Adapter height:", adapter_height);
    echo("Stopper height:", stopper_height);
    cylinder(d=outer_diameter, h=adapter_height, center=true);
    cylinder(d=inner_diameter, h=adapter_height, center=true);
}

translate([0,0,0]) {
    difference() {
        translate([0,0,-(adapter_height-stopper_height)/2]) cylinder(d=stopper_diameter, h=stopper_height, center=true);
        translate([0,0,-(adapter_height-stopper_height)/2]) cylinder(d=inner_diameter, h=stopper_height, center=true);
    }    
}
