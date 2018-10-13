attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 var_texcoord;
varying vec4 v_vColour;
varying vec2 v_vTexcoord;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    
    v_vColour = in_Colour;
    var_texcoord = in_TextureCoord;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//Base Requirements
varying vec2 var_texcoord;
varying vec4 v_vColour;

//Used for Vignette + Noise
uniform vec4 u_settings; //vignette inner circle size, vignette outter circle size, noise strength
uniform vec3 u_vignette_colour; //R,G,B
uniform vec2 random_pos;

//Used for Motion Blur
const float mbQuality = 32.0;
uniform vec2 poss;//x,y

float random(vec3 _scale, float _seed)
{
    return fract(sin(dot(vec3(var_texcoord, 1.0)+_seed, _scale))*43758.5453+_seed);
}

void main()
{
    vec4 base = texture2D( gm_BaseTexture, var_texcoord );

        for( float i=0.0;i<1.0;i+=1.0/mbQuality )
    {
            base += texture2D( gm_BaseTexture, var_texcoord+(0.5-poss) * i);
    }
    base /= mbQuality;
    
    float vignette = distance( vec2(0.5, 0.5), var_texcoord );
    vignette = u_settings.x - vignette * u_settings.y;
    vec3 vignette_colour = (u_vignette_colour/255.0) * vignette;

    float noise_strength = u_settings.z;
    float noise = noise_strength * ( 0.5 - random( vec3( 1.0 ), length( vec2((var_texcoord.x/var_texcoord.y) + random_pos.x, var_texcoord.y + random_pos.y)) ) );
    if (u_settings.w == 1.0) {vignette_colour += noise;}
        
    gl_FragColor =  gl_FragColor + v_vColour * vec4(base.rgb * vignette_colour, base.a);
}

