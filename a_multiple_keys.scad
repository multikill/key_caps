// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

use <src/key.scad>

include <a_settings.scad>
include <src/key_sizes.scad>
include <src/key_profiles.scad>
include <src/key_types.scad>
include <src/key_transformations.scad>


imgs = ["imgs/ts.stl","imgs/headset.stl", "imgs/ida_classic.stl", "imgs/mic.stl", "imgs/minus.stl", "imgs/plus.stl", "imgs/steam.stl", "imgs/ce.stl", "imgs/kc.stl"];

names = ["GH", ">_", "RC", ""];

for(y=[0:8]) {
  translate_u(0,y) cherry() key() translate([0,0,0]) scale(0.55) import(imgs[y]);
}

for(y=[0:3]) {
  translate_u(1,y) cherry() legend(names[y], [0,0, 6]) key();
}