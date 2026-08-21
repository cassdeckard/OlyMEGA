// Sanyo SS-540 PETG crossover board
// Units: millimeters
// Print two copies. Culver 1A-50 body is calipered; lug well is a through
// window because both terminals leave one HxW face.

$fn = 48;

/* [Board] */
board_x = 89.0;          // 3.5 in
board_y = 114.0;         // 4.5 in
board_z = 6.0;           // 4.5 mm cannot host cradles and an underside channel
corner_r = 3.0;
mount_d = 4.5;           // #8 clearance
mount_inset = 6.0;

/* [Cradles] */
cradle_depth = 1.5;
cradle_inner_l = 26.0;   // 31 mm bodies overhang ~2.5 mm per end
wall = 3.0;
lead_d = 2.5;
lead_outboard = 3.5;     // hole center from each inner cradle end
tie_slot_l = 3.5;
tie_slot_w = 1.5;
tie_slot_z = 2.2;

/* [Capacitor inner widths] */
tw_w = 17.0;             // 3.3 uF, 16 mm body
m22_w = 15.0;            // 2.2 uF, 14 mm body
m15_w = 12.0;            // 1.5 uF, 11 mm body
m10_w = 11.0;            // 1.0 uF, 10 mm body

/* [Culver 1A-50, calipered] */
// 8.7 H x 10.25 W x 20.4 L. Both connectors leave one HxW face.
breaker_l = 20.4;
breaker_w = 10.25;
breaker_h = 8.7;
breaker_pocket_clear = 0.6;
breaker_pocket_depth = 2.5;
breaker_lug_well = 7.0;  // through-window past the connector face

/* [Wiring] */
wire_d = 4.0;            // 16 AWG with insulation
channel_w = 12.0;
channel_d = 2.2;

eps = 0.05;

// --- derived ---
cap_outer_l = cradle_inner_l + 2 * wall;
mid_inner_w = m22_w + wall + m15_w + wall + m10_w;
mid_outer_w = mid_inner_w + 2 * wall;
tw_outer_w = tw_w + 2 * wall;

// Body across the board (L along X, W along Y). Lug face toward +X / spine.
brk_pocket_x = breaker_l + breaker_pocket_clear;
brk_pocket_y = breaker_w + breaker_pocket_clear;
brk_station_x = brk_pocket_x + breaker_lug_well;

// Y stack from the input edge (Y = 0)
y_brk = 12.0;
y_tw = y_brk + brk_pocket_y + 8.0;
y_mid = y_tw + cap_outer_l + 6.0;

x_tw = (board_x - tw_outer_w) / 2;
x_mid = (board_x - mid_outer_w) / 2;
x_brk = (board_x - brk_station_x) / 2;

module plate() {
    hull() {
        for (px = [corner_r, board_x - corner_r])
            for (py = [corner_r, board_y - corner_r])
                translate([px, py, 0])
                    cylinder(h = board_z, r = corner_r);
    }
}

module mount_holes() {
    for (px = [mount_inset, board_x - mount_inset])
        for (py = [mount_inset, board_y - mount_inset])
            translate([px, py, -eps])
                cylinder(h = board_z + 2 * eps, d = mount_d);
}

// Recessed cradle with side walls, lead holes, and zip-tie slots.
// origin: lower-left of the OUTER wall footprint, z = 0 is the board bottom.
module cap_station(inner_w, inner_l) {
    outer_w = inner_w + 2 * wall;
    outer_l = inner_l + 2 * wall;

    translate([wall, wall, board_z - cradle_depth])
        cube([inner_w, inner_l, cradle_depth + eps]);

    for (y = [-lead_outboard, inner_l + lead_outboard])
        translate([wall + inner_w / 2, wall + y, -eps])
            cylinder(h = board_z + 2 * eps, d = lead_d);

    for (xside = [wall / 2, wall + inner_w + wall / 2])
        translate([
            xside - tie_slot_w / 2,
            wall + inner_l / 2 - tie_slot_l / 2,
            board_z - tie_slot_z
        ])
            cube([tie_slot_w, tie_slot_l, tie_slot_z + eps]);
}

module mid_triplet() {
    // Shared 3 mm walls: 2.2 | wall | 1.5 | wall | 1.0
    cap_station(m22_w, cradle_inner_l);

    x1 = wall + m22_w;
    translate([x1, 0, 0])
        cap_station(m15_w, cradle_inner_l);

    x2 = x1 + wall + m15_w;
    translate([x2, 0, 0])
        cap_station(m10_w, cradle_inner_l);
}

module breaker_station() {
    translate([0, 0, board_z - breaker_pocket_depth])
        cube([brk_pocket_x, brk_pocket_y, breaker_pocket_depth + eps]);

    // Both lugs leave the +X HxW face. Open a through-window for soldering.
    translate([brk_pocket_x - eps, 0, -eps])
        cube([breaker_lug_well + eps, brk_pocket_y, board_z + 2 * eps]);
}

module wire_holes() {
    // Input pair, input edge
    translate([board_x * 0.28, 7.5, -eps])
        cylinder(h = board_z + 2 * eps, d = wire_d);
    translate([board_x * 0.72, 7.5, -eps])
        cylinder(h = board_z + 2 * eps, d = wire_d);

    // Driver hots and common return, output edge
    for (frac = [0.18, 0.38, 0.62, 0.82])
        translate([board_x * frac, board_y - 7.5, -eps])
            cylinder(h = board_z + 2 * eps, d = wire_d);
}

module underside_channel() {
    // Spine along the right side, then crossbars at the lead rows.
    spine_x = board_x - 22;
    translate([spine_x, 14, -eps])
        cube([channel_w, board_y - 28, channel_d + eps]);

    translate([12, y_brk + brk_pocket_y / 2 - 5, -eps])
        cube([spine_x - 12 + channel_w, 10, channel_d + eps]);

    for (y = [
        y_tw + wall - lead_outboard - 4,
        y_tw + wall + cradle_inner_l + lead_outboard - 4,
        y_mid + wall - lead_outboard - 4,
        y_mid + wall + cradle_inner_l + lead_outboard - 4
    ])
        translate([12, y, -eps])
            cube([spine_x - 12 + channel_w, 8, channel_d + eps]);
}

module ghost_breaker() {
    bx = x_brk + (brk_pocket_x - breaker_l) / 2;
    by = y_brk + (brk_pocket_y - breaker_w) / 2;
    bz = board_z - breaker_pocket_depth + 0.2;
    color("gray", 0.35)
        translate([bx, by, bz])
            cube([breaker_l, breaker_w, breaker_h]);
    // Placeholder lugs on the connector face; spacing is unmeasured.
    color("gold", 0.45)
        for (s = [-1.8, 1.8])
            translate([
                bx + breaker_l,
                by + breaker_w / 2 + s,
                bz + breaker_h / 2 - 0.6
            ])
                cube([5.0, 1.6, 1.2]);
}

module board() {
    difference() {
        plate();
        mount_holes();
        translate([x_brk, y_brk, 0])
            breaker_station();
        translate([x_tw, y_tw, 0])
            cap_station(tw_w, cradle_inner_l);
        translate([x_mid, y_mid, 0])
            mid_triplet();
        wire_holes();
        underside_channel();
    }
}

board();
%ghost_breaker();
