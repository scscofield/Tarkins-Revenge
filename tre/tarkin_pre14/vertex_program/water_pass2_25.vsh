//hlsl vs_1_1 vs_2_0

#include "vertex_program/include/vertex_shader_constants.inc"
#include "vertex_program/include/functions.inc"

struct InputVertex
{
	float4  position  : POSITION0  : register (v0);
	float4  normal    : NORMAL0    : register (v3);
	float2  tcs0      : TEXCOORD0  : register (v7);
};

struct OutputVertex
{
	float4  position  : POSITION0;
	float4  diffuse   : COLOR0;
	float   fog       : FOG;
	float2  tcs0      : TEXCOORD0;
	float2  tcs1      : TEXCOORD1;
	float3  tcs2      : TEXCOORD2;
	float3  tcs3      : TEXCOORD3;
};

OutputVertex main (InputVertex inputVertex)
{
	OutputVertex outputVertex;

	//-- transform vertex
	outputVertex.position = transform3d (inputVertex.position);

	//-- calculate fog
	outputVertex.fog = calculateFog (inputVertex.position);

	//-- calculate lighting
	outputVertex.diffuse  = lightData.ambient.ambientColor;
	outputVertex.diffuse += calculateDiffuseLighting (true, inputVertex.position, inputVertex.normal);

	//-- calculate texture coordinates
	float3 directionToCamera = calculateViewerDirection_w (inputVertex.position);
	
	outputVertex.tcs0 = inputVertex.tcs0 + textureScroll.xy;
	outputVertex.tcs1 = inputVertex.tcs0 + textureScroll.zw;
	outputVertex.tcs2 = directionToCamera;
	outputVertex.tcs3 = lightData.dot3[0].direction_o;

	return outputVertex;
}
