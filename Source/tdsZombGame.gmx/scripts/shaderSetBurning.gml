///shaderSetBurning(spriteIndex, imageIndex, burningSprite, burningImage)
var _spriteIndex = argument0; // Sprite index for the bloodsplat
var _imageIndex = argument1; // Image index
var _burningSprite = argument0; // Sprite index for the bloodsplat
var _burningImage = argument1; // Image index

// Set the shader
shader_set(shdBurning);

// Get access to the uniforms so we can set their values
var uBurning = shader_get_sampler_index(shdBurning, "uBurning");
var uBurningUV = shader_get_uniform(shdBurning, "uBurningUV");
var uSpriteUV = shader_get_uniform(shdBurning, "uSpriteUV");

// Set the uniform values
var texBurning = sprite_get_texture(_burningSprite, _burningImage);
var uvBurning = sprite_get_uvs(_burningSprite, _burningImage);
texture_set_stage(uBurning, texBurning);
shader_set_uniform_f(uBurningUV, uvBurning[0], uvBurning[1], uvBurning[2], uvBurning[3]);

var uvSprite = sprite_get_uvs(sprite_index, image_index); // <- should be the enemy sprite
shader_set_uniform_f(uSpriteUV, uvSprite[0], uvSprite[1], uvSprite[2], uvSprite[3]);
