noise(10)
  .scrollX(2)
  .kaleid(99)
  .color(3,2,5)
  .add(voronoi(3))
  .modulateRepeatX(osc(10), 5.0, ({time}) =>Math.sin(time) * 5)
  .out()
speed=0.1
