///playerStepCamera();

var cameraDir = playerAngle;
var mouseDistance = distance_to_point(mouse_x, mouse_y);
var cameraSpeed = 0.15 * camMultiplier;

var swayAmt = 0.25;
var swayDir = (Frame * 1.5) mod 360;
var xSway = lengthdir_x(swayAmt, swayDir);
var ySway = lengthdir_y(swayAmt, swayDir);

if (lookFar)
    {
        var xDist = view_wview * 0.45;
        var yDist = view_hview * 0.45;
        cameraSpeed = cameraSpeed * 1.5;
    }
else
    {
        var xDist = 64;
        var yDist = 64;
    }

var shakeAm = Shake / 2;

xTo = clamp((x - view_wview/2) + lengthdir_x(min(mouseDistance, xDist), cameraDir), 0, room_width - view_wview);
yTo = clamp((y - view_hview/2) + lengthdir_y(min(mouseDistance, yDist), cameraDir), 0, room_height - view_hview);

Shake = Shake * 0.45;

view_xview = clamp(lerp(view_xview, xTo, cameraSpeed) + choose(-shakeAm, shakeAm), 0, room_width - view_wview) + xSway;
view_yview = clamp(lerp(view_yview, yTo, cameraSpeed) + choose(-shakeAm, shakeAm), 0, room_height - view_hview) + ySway;

x = clamp(x, 96, room_width - 96);
y = clamp(y, 96, room_height - 96);
