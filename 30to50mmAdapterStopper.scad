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

difference() {
    linear_extrude(stopper_height) circle(stopper_diameter);
    linear_extrude(stopper_height) circle(outer_diameter);
}