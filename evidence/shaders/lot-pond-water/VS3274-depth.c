/* Analyst translation of the reviewed DEPTH SLICE of PC 1.67 LotPondWater VS3274.
   This is shader bytecode, not TS3W.exe machine code or a Ghidra decompilation.
   Input v0 is the packed pond POSITION: y is water height and w is ground height.
   c23.x=1/256. D3D rasterization subsequently interpolates TEXCOORD4.x across the triangle.
   Other vertex outputs, transforms, wind and lighting are deliberately outside this excerpt. */
float PondVertexDepthInterpolant(float4 packedPosition) {
    float packedGroundHeight = packedPosition.w * (1.0f / 256.0f); /* 0x00C4 r0.w */
    float depth = packedPosition.y * (1.0f / 256.0f) - packedGroundHeight; /* 0x00D4 */
    return depth + depth; /* 0x010C o5.x, TEXCOORD4.x */
}
