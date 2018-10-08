///playerStepCamera();

var cameraDir = playerAngle;
var mouseDistance = distance_to_point(mouse_x, mouse_y);
var cameraSpeed = 0.085;
var cameraDistance = 32;

var shakeAm = Shake/2;

xTo = clamp((x + irandom_range(-shakeAm, shakeAm) - view_wview/2) + lengthdir_x(min(cameraDistance), cameraDir), 0, room_width - view_wview);
yTo = clamp((y + irandom_range(-shakeAm, shakeAm) - view_hview/2) + lengthdir_y(min(cameraDistance), cameraDir), 0, room_height - view_hview);

Shake = Shake * 0.75;

view_xview = lerp(view_xview, xTo, cameraSpeed);
view_yview = lerp(view_yview, yTo, cameraSpeed);

x = clamp(x, 96, room_width - 96);
y = clamp(y, 96, room_height - 96);
