#ifndef RAYTRACING_COMMON
#define RAYTRACING_COMMON

#extension GL_EXT_control_flow_attributes : require

#define PI        3.14159265358979323
#define TWO_PI    6.28318530717958648
#define TMIN      0
#define TMAX      1.0e27

#include "LightCommon.glsl"

struct RayPayloadInfo
{
	float hitT;
	vec3 worldPos;
	vec3 worldNormal;
	vec3 radiance;
	vec3 baseColor;
	float roughness;
	float metallic;
	float ior;
	float opacity;
	float shadingMode;
	vec3 diffuseColor;
	vec3 specularColor;
};

layout(binding = 0, set = 0) uniform accelerationStructureNV topLevelAS;
layout(binding = 1, set = 0, rgba32f) uniform image2D image;
layout(binding = 2, set = 0) uniform GlobalParamBlock 
{
	vec4 pos;
	mat4 invProj;
	mat4 invView;
	vec4 samplingData;
	vec4 viewSize;
} globalParam;

layout(std430, binding = 3, set = 0) buffer LightDatasBuffer
{
    LightData datas[];
} lights;

layout(location = 0) rayPayloadNV RayPayloadInfo payLoadInfo;

#endif