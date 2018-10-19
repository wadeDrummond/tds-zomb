/// set_shader_bloodsplat(bloodSpr, bloodImg, self_sprite, self_image)
var bloodSpr = argument0, // Sprite index for the bloodsplat
    bloodImg = argument1; // Image index
    selfSpr = argument2;
    selfImage = argument3;

// Set the shader
shader_set(shdTextureOverlay);

// Get access to the uniforms so we can set their values
var u_Blood    = shader_get_sampler_index(shdTextureOverlay, "u_Blood");
var u_BloodUV  = shader_get_uniform(shdTextureOverlay, "u_BloodUV");
var u_SpriteUV = shader_get_uniform(shdTextureOverlay, "u_SpriteUV");
var u_alphaAmount = shader_get_uniform(shdTextureOverlay, "alphaAmount");

// Set the uniform values
var bloodTex = sprite_get_texture(bloodSpr, bloodImg);
var bloodUVs = sprite_get_uvs(bloodSpr, bloodImg);
texture_set_stage(u_Blood, bloodTex);
shader_set_uniform_f(u_BloodUV, bloodUVs[0], bloodUVs[1], bloodUVs[2], bloodUVs[3]);

var spriteUVs = sprite_get_uvs(selfSpr, selfImage); // <- should be the enemy sprite
shader_set_uniform_f(u_SpriteUV, spriteUVs[0], spriteUVs[1], spriteUVs[2], spriteUVs[3]);
shader_set_uniform_f(u_alphaAmount, sin_move(0.2, 0.65, 10, 0));
