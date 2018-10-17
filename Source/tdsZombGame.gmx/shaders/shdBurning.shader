//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D uBurning;
uniform vec4 uBurningUV;
uniform vec4 uSpriteUV;

void main() {
  gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
  vec2 pos = (v_vTexcoord - uSpriteUV.xy) / (uSpriteUV.zw - uSpriteUV.xy);
  vec2 burningCoord = mix(uBurningUV.xy, uBurningUV.zw, pos);
  vec4 burningColour = texture2D( uBurning, bloodCoord );
  gl_FragColor.rgb *= (1.0 - burningColour.a);
  gl_FragColor.rgb += burningColour.rgb * burningColour.a;
}
