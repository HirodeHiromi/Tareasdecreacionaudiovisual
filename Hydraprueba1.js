 // Type some code on a new line (such as "osc().out()"), and press CTRL+shift+enter
osc(10,0.1,2)
  .color(1,0.6,2)
  .kaleid(2)
  .layer(voronoi(5)
         .luma(0.1,0.9))
  .repeat(15)
  .rotate(1)
  .scale(3)
  .posterize(9)
  .brightness(1)
  .invert(0.3)
  .out()