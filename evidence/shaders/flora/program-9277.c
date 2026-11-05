/* Analyst instruction translation of the complete original vs_2_0 program 9277.
 * This is shader pseudocode, not Ghidra native C or an executable host shader.
 * SM2_* helpers preserve shader instruction semantics, masks and modifiers;
 * _pp requests partial precision; RCP/RSQ/MAD/LIT and sample filtering do not
 * promise binary32 host arithmetic, contraction, exact hardware rounding or
 * a D3D alpha-test quantizer. Relative constants use the original address register.
 * Register spelling: oT=texture coordinate, oD=color, oPos=position.
 * Ordinary horizontal VS: c16 is the sine-space pitch pair, c17 the selected LOD limits.
 * oT1.z is an alpha-test target; 9283 subtracts the sampled alpha from it.
 * Only packet v0/v1/v2 are declared; later stride36 attributes are not consumed.
 */
void Program9277(ShaderRegisters &R)
{
    /* 0004 */ c23.xyzw = float4(1.0, -171.0, 171.0, 0.0);
    /* 001c */ c24.xyzw = float4(0.005847953259944916, 0.009999999776482582, 0.5, 3.0);
    /* 0034 */ c25.xyzw = float4(0.20999999344348907, 0.6700000166893005, 0.11999999731779099, 0.0);
    /* 004c */ c26.xyzw = float4(-0.5, 0.5, 0.0, 0.0);
    /* 0064 */ // Input declaration 0x80000000, v0.xyzw
    /* 0070 */ // Input declaration 0x80000005, v1.xyzw
    /* 007c */ // Input declaration 0x80010005, v2.xyzw
    /* 0088 */ r1.w = SM2_RCP(v1.wwww);
    /* 0094 */ r0.xyz = SM2_MAD(v1.xyzw, -r1.wwww, c12.xyzw);
    /* 00a8 */ r0.x = SM2_DP3(r0.xyzw, r0.xyzw);
    /* 00b8 */ r0.w = SM2_RSQ(r0.xxxx);
    /* 00c4 */ r3.w = SM2_RCP(r0.wwww);
    /* 00d0 */ r0.xz = SM2_MUL(r1.wwww, v1.xyzw);
    /* 00e0 */ r1.xy = SM2_MAD(r3.wwww, c17.xzzw, c17.ywzw);
    /* 00f4 */ r0.w = SM2_MUL(r0.yyyy, r0.wwww);
    /* 0104 */ r1.w = SM2_MIN(r1.yyyy, r1.xxxx);
    /* 0114 */ r0.w = SM2_MAD(r0.wwww, c16.xxxx, c16.yyyy);
    /* 0128 */ r2.w = SM2_MIN(r1.wwww, c23.xxxx);
    /* 0138 */ r0.w = SM2_MIN(r0.wwww, c23.xxxx);
    /* 0148 */ r1.w = SM2_MUL(r2.wwww, c23.yyyy);
    /* 0158 */ r4.w = SM2_SLT(r2.wwww, c24.yyyy);
    /* 0168 */ r1.w = SM2_MAD(r0.wwww, r1.wwww, c23.zzzz);
    /* 017c */ r2.w = SM2_ADD(-r0.wwww, c23.xxxx);
    /* 018c */ r0.w = SM2_RCP(v0.wwww);
    /* 0198 */ oT1.z = SM2_MAD(r1.wwww, c24.xxxx, c24.yyyy);
    /* 01ac */ r0.xz = SM2_MAD(v0.xyzw, r0.wwww, -r0.xyzw);
    /* 01c0 */ r0.y = SM2_MOV(c23.wwww);
    /* 01cc */ r1.w = SM2_RCP(v2.wwww);
    /* 01d8 */ r1.x = SM2_DP3(-c14.xyzw, r0.xyzw);
    /* 01e8 */ r0.xyz = SM2_MUL(r1.wwww, v2.xyzw);
    /* 01f8 */ r1.w = SM2_RCP(r0.zzzz);
    /* 0204 */ oT1.xy = SM2_MOV(r0.xyzw);
    /* 0210 */ oT1.w = SM2_MUL(r1.xxxx, r1.wwww);
    /* 0220 */ r1.xyz = SM2_MUL(r0.wwww, v0.xyzw);
    /* 0230 */ r3.xy = SM2_MAD(v0.xzzw, r0.wwww, -c15.zwzw);
    /* 0244 */ r1.w = SM2_MOV(c23.xxxx);
    /* 0250 */ r0.x = SM2_DP4(r1.xyzw, c0.xyzw);
    /* 0260 */ r2.xyz = SM2_NRM(-c14.xyzw);
    /* 026c */ r0.y = SM2_DP4(r1.xyzw, c1.xyzw);
    /* 027c */ r2.x = SM2_DP3(r2.xyzw, c9.xyzw);
    /* 028c */ r0.z = SM2_DP4(r1.xyzw, c2.xyzw);
    /* 029c */ r5.w = SM2_ADD(r2.xxxx, c23.xxxx);
    /* 02ac */ r0.w = SM2_DP4(r1.xyzw, c3.xyzw);
    /* 02bc */ r1.w = SM2_MUL(r5.wwww, c24.zzzz);
    /* 02cc */ oPos.xyzw = SM2_MAD(r4.wwww, -r0.xyzw, r0.xyzw);
    /* 02e0 */ r0.w = SM2_MAX(r1.wwww, c23.wwww);
    /* 02f0 */ oT2.z = SM2_ADD(r2.wwww, r2.wwww);
    /* 0300 */ r1.w = SM2_MIN(r0.wwww, c23.xxxx);
    /* 0310 */ r2.w = SM2_MIN(r1.wwww, c23.xxxx);
    /* 0320 */ r0.xyz = SM2_MOV(c7.xyzw);
    /* 032c */ r0.xyz = SM2_ADD(-r0.xyzw, c6.xyzw);
    /* 033c */ r0.w = SM2_MUL(r2.yyyy, c24.wwww);
    /* 034c */ r0.xyz = SM2_MAD(r2.wwww, r0.xyzw, c7.xyzw);
    /* 0360 */ r1.xyz = SM2_MOV(c19.xyzw);
    /* 036c */ r1.xyz = SM2_ADD(-r1.xyzw, c18.xyzw);
    /* 037c */ r0.w = SM2_MAX(r0.wwww, c23.wwww);
    /* 038c */ r1.xyz = SM2_MAD(r1.wwww, r1.xyzw, c19.xyzw);
    /* 03a0 */ r0.w = SM2_MIN(r0.wwww, c23.xxxx);
    /* 03b0 */ r0.xyz = SM2_ADD(r0.xyzw, -r1.xyzw);
    /* 03c0 */ r0.w = SM2_ADD(-r0.wwww, c23.xxxx);
    /* 03d0 */ oT2.xy = SM2_MUL(r3.xyzw, c15.xyzw);
    /* 03e0 */ r1.xyz = SM2_MAD(r0.wwww, r0.xyzw, r1.xyzw);
    /* 03f4 */ r3.x = SM2_DP3(r1.xyzw, c25.xyzw);
    /* 0404 */ r2.xyz = SM2_MOV(c14.xyzw);
    /* 0410 */ r0.w = SM2_MAD(r2.yyyy, c26.xxxx, c26.yyyy);
    /* 0424 */ r0.xyz = SM2_LRP(c22.xxxx, r1.xyzw, r3.xxxx);
    /* 0438 */ r0.w = SM2_MAX(r0.wwww, c23.wwww);
    /* 0448 */ r0.w = SM2_MIN(r0.wwww, c23.xxxx);
    /* 0458 */ r1.xyz = SM2_MOV(c21.xyzw);
    /* 0464 */ r1.xyz = SM2_ADD(-r1.xyzw, c20.xyzw);
    /* 0474 */ r1.xyz = SM2_MAD(r0.wwww, r1.xyzw, c21.xyzw);
    /* 0488 */ r2.x = SM2_DP3(-r2.xyzw, c5.xyzw);
    /* 0498 */ r1.xyz = SM2_MAD(r0.xyzw, c22.yyyy, r1.xyzw);
    /* 04ac */ r1.w = SM2_MAX(r2.xxxx, c23.wwww);
    /* 04bc */ r2.w = SM2_MAD(r3.wwww, c11.xxxx, c11.yyyy);
    /* 04d0 */ r0.w = SM2_ADD(r3.wwww, -c10.yyyy);
    /* 04e0 */ r2.w = SM2_MAX(r2.wwww, c23.wwww);
    /* 04f0 */ r0.w = SM2_MUL(r0.wwww, c10.xxxx);
    /* 0500 */ r2.w = SM2_MIN(r2.wwww, c23.xxxx);
    /* 0510 */ r0.w = SM2_MAX(r0.wwww, c23.wwww);
    /* 0520 */ r2.w = SM2_ADD(-r2.wwww, c23.xxxx);
    /* 0530 */ r0.w = SM2_MIN(r0.wwww, c23.xxxx);
    /* 0540 */ r1.w = SM2_MIN(r1.wwww, c23.xxxx);
    /* 0550 */ r0.w = SM2_MAD(c10.zzzz, r0.wwww, r2.wwww);
    /* 0564 */ r2.xyz = SM2_MUL(r1.wwww, c4.xyzw);
    /* 0574 */ r0.w = SM2_MAX(r0.wwww, c23.wwww);
    /* 0584 */ r0.xy = SM2_MIN(r0.wwww, c23.xxxx);
    /* 0594 */ r0.zw = SM2_MOV(c11.wwww);
    /* 05a0 */ oD1.xyz = SM2_MAD(r1.xyzw, c13.wwww, r2.xyzw);
    /* 05b4 */ r0.xyzw = SM2_LIT(r0.xyzw);
    /* 05c0 */ oD0.xyz = SM2_MOV(c8.xyzw);
    /* 05cc */ oD0.w = SM2_MOV(r0.zzzz);
    return;
}
