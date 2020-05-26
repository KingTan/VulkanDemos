#ifndef LIGHT_SKY_COMMON
#define LIGHT_SKY_COMMON

void SkyEnvLightEvalLight(int lightId, vec3 lightUV, RayDesc ray, out vec3 outRadiance)
{
    outRadiance = lights.datas[lightId].color.rgb;
}

#endif