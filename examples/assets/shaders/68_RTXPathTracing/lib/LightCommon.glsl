#ifndef LIGHT_COMMON
#define LIGHT_COMMON

#define LIGHT_TYPE_SKY              0 
#define LIGHT_TYPE_POINT			1
#define LIGHT_TYPE_DIRECTIONAL		2
#define LIGHT_TYPE_RECT				3
#define LIGHT_TYPE_SPOT				4
#define LIGHT_TYPE_MAX				5

struct LightData 
{
    vec4 type;
	vec4 position;
	vec4 normal;
	vec4 dPdu;
	vec4 dPdv;
	vec4 color;
	vec4 dimensions;
	vec4 attenuation;
};

#endif