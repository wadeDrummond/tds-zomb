///draw_triangle_width(x1, y1, x2, y2, x3, y3, w)

dx1 = argument0;
dy1 = argument1;
dx2 = argument2;
dy2 = argument3;
dx3 = argument4;
dy3 = argument5;
dw = argument6;

draw_line_width(dx1, dy1, dx2, dy2, dw);
draw_line_width(dx2, dy2, dx3, dy3, dw);
draw_line_width(dx3, dy3, dx1, dy1, dw);
