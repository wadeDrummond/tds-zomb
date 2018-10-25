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

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D u_Blood;
uniform vec4      u_BloodUV;
uniform vec4      u_SpriteUV;
uniform float alphaAmount;

void main() {
  gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
  vec2 pos = (v_vTexcoord - u_SpriteUV.xy) / (u_SpriteUV.zw - u_SpriteUV.xy);
  vec2 bloodCoord = mix(u_BloodUV.xy, u_BloodUV.zw, pos);
  vec4 bloodColor = texture2D( u_Blood, bloodCoord );
  bloodColor.a = bloodColor.a * alphaAmount;
  gl_FragColor.rgb *= (1.0 - bloodColor.a);
  
  gl_FragColor.rgb += (bloodColor.rgb * bloodColor.a);
}
