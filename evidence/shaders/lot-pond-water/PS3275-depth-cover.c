/* Analyst translation of the reviewed DEPTH/COVER SLICE of PC 1.67 LotPondWater PS3275.
   This is shader bytecode, not TS3W.exe machine code or a Ghidra decompilation.
   D2 is the interpolated TEXCOORD4.x from VS3274. F is c9.z (pond freeze).
   patch is s9 sampled at world.xz*0.0125 (0x0244..0x0254).
   Exact tokens establish float constants; decimal values below show their intended values.
   Other colour/normal/reflection/lighting equations are outside this excerpt.
   No depth clamp to [-1,7] precedes these operations. Saturation here belongs to the cover expression. */
float PondIceCover(float D2, float F, float patch) {
    float denom = F * 5.0f + 0.00001f; /* 0x01EC..0x020C */
    float k = (1.0f - F) / denom; /* 0x0218..0x0234 */
    float c = saturate(k * (D2 * 0.2f + patch)); /* 0x0328,0x034C */
    float baseCover = 1.0f - c + patch * 0.4f; /* 0x036C,0x03A0 */
    float g = saturate(F * 0.1f + baseCover); /* 0x07F8, r9.z=c11.z=0.1 */
    float g2 = g * g; /* 0x081C */
    float g4 = g2 * g2; /* 0x083C */
    return g * g4; /* 0x085C */
}
