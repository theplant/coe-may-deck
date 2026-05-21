// Text-first CAD demo for the May CoE deck.
// OpenSCAD turns this readable source into a binary STL.

$fn = 36;

base_w = 86;
base_d = 76;
base_h = 6;

module rounded_box(size, r = 3) {
  hull() {
    for (x = [r, size[0] - r])
      for (y = [r, size[1] - r])
        translate([x, y, 0])
          cylinder(h = size[2], r = r);
  }
}

module slanted_bar(x, y1, z1, y2, z2, w, d, h) {
  hull() {
    translate([x, y1, z1]) cube([w, d, h]);
    translate([x, y2, z2]) cube([w, d, h]);
  }
}

module phone_stand() {
  union() {
    // Stable base with softened corners.
    rounded_box([base_w, base_d, base_h], 5);

    // Front lip keeps the phone from sliding forward.
    translate([11, 10, base_h])
      rounded_box([64, 9, 14], 2);

    // Main leaning back support.
    slanted_bar(11, 52, base_h, 31, 88, 64, 7, 5);

    // Two side ribs make the stand printable and visibly structural.
    for (x = [12, 70])
      slanted_bar(x, 47, base_h, 34, 58, 4, 12, 5);
  }
}

phone_stand();
