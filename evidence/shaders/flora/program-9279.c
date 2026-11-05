/* Analyst instruction translation of the complete original vs_2_0 program 9279.
 * This is shader pseudocode, not Ghidra native C or an executable host shader.
 * SM2_* helpers preserve shader instruction semantics, masks and modifiers;
 * _pp requests partial precision; RCP/RSQ/MAD/LIT and sample filtering do not
 * promise binary32 host arithmetic, contraction, exact hardware rounding or
 * a D3D alpha-test quantizer. Relative constants use the original address register.
 * Register spelling: oT=texture coordinate, oD=color, oPos=position.
 * Ordinary vertical VS produces two atlas UVs; oT2.z weights the FIRST UV sample.
 * Its separately produced oT1.z is not read by 9284, which declares t1.xy only.
 * c59 is sine-space pitch; c60 combines near/last-LOD and cull as a MIN, not product.
 */
void Program9279(ShaderRegisters &R)
{
    /* 0004 */ c32.xyzw = float4(1.0, 0.0, 0.0, 0.0);
    /* 001c */ c33.xyzw = float4(0.0, 1.0, 0.0, 0.0);
    /* 0034 */ c34.xyzw = float4(0.0, 0.0, 1.0, 0.0);
    /* 004c */ c35.xyzw = float4(0.0, 0.0, 0.0, 1.0);
    /* 0064 */ c38.xyzw = float4(0.0, 1.0, -171.0, 255.0);
    /* 007c */ c36.xyzw = float4(1.0, 0.0, 6.2831854820251465, 0.8999999761581421);
    /* 0094 */ c37.xyzw = float4(0.0, 0.0, 0.5, -0.5);
    /* 00ac */ c39.xyzw = float4(1.0, 1.0, 0.005847953259944916, 0.009999999776482582);
    /* 00c4 */ c40.xyzw = float4(3.0, 0.20999999344348907, 0.6700000166893005, 0.11999999731779099);
    /* 00dc */ // Input declaration 0x80000000, v0.xyzw
    /* 00e8 */ // Input declaration 0x80000005, v1.xyzw
    /* 00f4 */ // Input declaration 0x80010005, v2.xyzw
    /* 0100 */ r1.w = SM2_RCP(v1.wwww);
    /* 010c */ r3.w = SM2_MAD(v1.zzzz, -r1.wwww, c54.xxxx);
    /* 0120 */ r2.w = SM2_RCP(v2.yyyy);
    /* 012c */ r0.w = SM2_SLT(r3.wwww, c32.wwww);
    /* 013c */ r2.w = SM2_MUL(r2.wwww, c36.zzzz);
    /* 014c */ r4.w = SM2_MAD(r0.wwww, c36.zzzz, r3.wwww);
    /* 0160 */ r5.w = SM2_RCP(r2.wwww);
    /* 016c */ r0.w = SM2_MUL(r4.wwww, r5.wwww);
    /* 017c */ r3.w = SM2_FRC(r0.wwww);
    /* 0188 */ r0.w = SM2_SLT(r0.wwww, -r0.wwww);
    /* 0198 */ r6.w = SM2_MAD(r4.wwww, r5.wwww, -r3.wwww);
    /* 01ac */ r3.w = SM2_SLT(-r3.wwww, r3.wwww);
    /* 01bc */ r3.w = SM2_MAD(r0.wwww, r3.wwww, r6.wwww);
    /* 01d0 */ r8.w = SM2_ADD(v2.yyyy, -c32.xxxx);
    /* 01e0 */ r0.w = SM2_SLT(r8.wwww, r3.wwww);
    /* 01f0 */ r2.xy = SM2_MUL(r1.wwww, v1.xyzw);
    /* 0200 */ r0.w = SM2_MAD(r0.wwww, -r3.wwww, r3.wwww);
    /* 0214 */ a0.z = SM2_MOVA(r0.wwww);
    /* 0220 */ r1.w = SM2_RCP(v0.wwww);
    /* 022c */ a0.w = SM2_MOVA(v2.xxxx);
    /* 0238 */ r1.xyz = SM2_MAD(v0.xyzw, -r1.wwww, c53.xyzw);
    /* 024c */ r0.xyzw = SM2_MOV(c[0 + a0.zzzz].xyzw);
    /* 025c */ oT1.xy = SM2_MAD(r0.zwzw, -c[36 + a0.wwww].xyzw, r0.xyzw);
    /* 0274 */ r0.x = SM2_DP3(r1.xyzw, r1.xyzw);
    /* 0284 */ r2.w = SM2_MAD(r3.wwww, -r2.wwww, r4.wwww);
    /* 0298 */ r0.w = SM2_RSQ(r0.xxxx);
    /* 02a4 */ r7.w = SM2_ADD(r3.wwww, c32.xxxx);
    /* 02b4 */ r3.w = SM2_RCP(r0.wwww);
    /* 02c0 */ r4.w = SM2_MUL(r5.wwww, r2.wwww);
    /* 02d0 */ r0.xy = SM2_MAD(r3.wwww, c60.xzzw, c60.ywzw);
    /* 02e4 */ r5.w = SM2_MAD(r2.wwww, -r5.wwww, c32.xxxx);
    /* 02f8 */ r2.w = SM2_MIN(r0.yyyy, r0.xxxx);
    /* 0308 */ r9.w = SM2_MUL(r4.wwww, c36.wwww);
    /* 0318 */ r2.w = SM2_MIN(r2.wwww, c32.xxxx);
    /* 0328 */ r4.w = SM2_MUL(r1.yyyy, r0.wwww);
    /* 0338 */ r6.w = SM2_MAD(r2.wwww, c38.zzzz, c38.wwww);
    /* 034c */ r0.w = SM2_LRP(r9.wwww, c38.wwww, r6.wwww);
    /* 0360 */ r4.w = SM2_MAD(r4.wwww, c59.zzzz, c59.wwww);
    /* 0374 */ r0.w = SM2_ADD(r0.wwww, -c38.wwww);
    /* 0384 */ r4.w = SM2_MIN(r4.wwww, c32.xxxx);
    /* 0394 */ r2.w = SM2_SLT(r2.wwww, c39.wwww);
    /* 03a4 */ r0.w = SM2_MAD(r4.wwww, r0.wwww, -c38.zzzz);
    /* 03b8 */ oT1.z = SM2_MAD(r0.wwww, c39.zzzz, c39.wwww);
    /* 03cc */ r0.w = SM2_SLT(r8.wwww, r7.wwww);
    /* 03dc */ r7.w = SM2_MAD(r0.wwww, -r7.wwww, r7.wwww);
    /* 03f0 */ r0.w = SM2_ADD(-r6.wwww, c38.wwww);
    /* 0400 */ a0.z = SM2_MOVA(r7.wwww);
    /* 040c */ r5.w = SM2_MUL(r5.wwww, r0.wwww);
    /* 041c */ r0.xyzw = SM2_MOV(c[0 + a0.zzzz].xyzw);
    /* 042c */ oT2.xy = SM2_MAD(r0.zwzw, -c[36 + a0.wwww].xyzw, r0.xyzw);
    /* 0444 */ r5.w = SM2_MAD(r5.wwww, c36.wwww, r6.wwww);
    /* 0458 */ r0.xyzw = SM2_MOV(c[32 + a0.wwww].xyzw);
    /* 0468 */ r1.z = SM2_DP4(c37.zwwz, r0.xyzw);
    /* 0478 */ r1.y = SM2_DP4(c32.xxzw, r0.xyzw);
    /* 0488 */ r0.w = SM2_ADD(r5.wwww, -c38.wwww);
    /* 0498 */ r0.yz = SM2_MUL(r2.xyxw, r1.xyzw);
    /* 04a8 */ r4.w = SM2_MAD(r4.wwww, r0.wwww, -c38.zzzz);
    /* 04bc */ r0.xw = SM2_MUL(r0.zzzz, c58.zyzy);
    /* 04cc */ r1.xyz = SM2_MAD(v0.xyzw, r1.wwww, r0.xyww);
    /* 04e0 */ r1.w = SM2_MOV(c32.xxxx);
    /* 04ec */ oT2.z = SM2_MAD(r4.wwww, c39.zzzz, c39.wwww);
    /* 0500 */ r0.x = SM2_DP4(r1.xyzw, c41.xyzw);
    /* 0510 */ r0.y = SM2_DP4(r1.xyzw, c42.xyzw);
    /* 0520 */ r2.xyz = SM2_NRM(-c56.xyzw);
    /* 052c */ r0.z = SM2_DP4(r1.xyzw, c43.xyzw);
    /* 053c */ r2.x = SM2_DP3(r2.xyzw, c50.xyzw);
    /* 054c */ r0.w = SM2_DP4(r1.xyzw, c44.xyzw);
    /* 055c */ r1.w = SM2_ADD(r2.xxxx, c32.xxxx);
    /* 056c */ r1.xy = SM2_ADD(r1.xzzw, -c57.zwzw);
    /* 057c */ r1.w = SM2_MUL(r1.wwww, c37.zzzz);
    /* 058c */ oPos.xyzw = SM2_MAD(r2.wwww, -r0.xyzw, r0.xyzw);
    /* 05a0 */ r0.w = SM2_MAX(r1.wwww, c32.wwww);
    /* 05b0 */ oT3.xy = SM2_MUL(r1.xyzw, c57.xyzw);
    /* 05c0 */ r1.w = SM2_MIN(r0.wwww, c32.xxxx);
    /* 05d0 */ r2.w = SM2_MIN(r1.wwww, c32.xxxx);
    /* 05e0 */ r0.xyz = SM2_MOV(c48.xyzw);
    /* 05ec */ r0.xyz = SM2_ADD(-r0.xyzw, c47.xyzw);
    /* 05fc */ r0.w = SM2_MUL(r2.yyyy, c40.xxxx);
    /* 060c */ r0.xyz = SM2_MAD(r2.wwww, r0.xyzw, c48.xyzw);
    /* 0620 */ r1.xyz = SM2_MOV(c62.xyzw);
    /* 062c */ r1.xyz = SM2_ADD(-r1.xyzw, c61.xyzw);
    /* 063c */ r0.w = SM2_MAX(r0.wwww, c32.wwww);
    /* 064c */ r1.xyz = SM2_MAD(r1.wwww, r1.xyzw, c62.xyzw);
    /* 0660 */ r0.w = SM2_MIN(r0.wwww, c32.xxxx);
    /* 0670 */ r0.xyz = SM2_ADD(r0.xyzw, -r1.xyzw);
    /* 0680 */ r0.w = SM2_ADD(-r0.wwww, c32.xxxx);
    /* 0690 */ r1.xyz = SM2_MAD(r0.wwww, r0.xyzw, r1.xyzw);
    /* 06a4 */ r2.xyz = SM2_MOV(c56.xyzw);
    /* 06b0 */ r0.w = SM2_MAD(r2.yyyy, c37.wwww, c37.zzzz);
    /* 06c4 */ r3.x = SM2_DP3(r1.xyzw, c40.yzww);
    /* 06d4 */ r0.w = SM2_MAX(r0.wwww, c32.wwww);
    /* 06e4 */ r0.xyz = SM2_LRP(c65.xxxx, r1.xyzw, r3.xxxx);
    /* 06f8 */ r0.w = SM2_MIN(r0.wwww, c32.xxxx);
    /* 0708 */ r1.xyz = SM2_MOV(c64.xyzw);
    /* 0714 */ r1.xyz = SM2_ADD(-r1.xyzw, c63.xyzw);
    /* 0724 */ r2.x = SM2_DP3(-r2.xyzw, c46.xyzw);
    /* 0734 */ r1.xyz = SM2_MAD(r0.wwww, r1.xyzw, c64.xyzw);
    /* 0748 */ r0.w = SM2_MAX(r2.xxxx, c32.wwww);
    /* 0758 */ r0.xyz = SM2_MAD(r0.xyzw, c65.yyyy, r1.xyzw);
    /* 076c */ r2.w = SM2_MIN(r0.wwww, c32.xxxx);
    /* 077c */ r1.w = SM2_MAD(r3.wwww, c52.xxxx, c52.yyyy);
    /* 0790 */ r0.w = SM2_ADD(r3.wwww, -c51.yyyy);
    /* 07a0 */ r1.w = SM2_MAX(r1.wwww, c32.wwww);
    /* 07b0 */ r0.w = SM2_MUL(r0.wwww, c51.xxxx);
    /* 07c0 */ r1.w = SM2_MIN(r1.wwww, c32.xxxx);
    /* 07d0 */ r0.w = SM2_MAX(r0.wwww, c32.wwww);
    /* 07e0 */ r1.w = SM2_ADD(-r1.wwww, c32.xxxx);
    /* 07f0 */ r0.w = SM2_MIN(r0.wwww, c32.xxxx);
    /* 0800 */ r1.xyz = SM2_MUL(r2.wwww, c45.xyzw);
    /* 0810 */ r0.w = SM2_MAD(c51.zzzz, r0.wwww, r1.wwww);
    /* 0824 */ oD1.xyz = SM2_MAD(r0.xyzw, c55.wwww, r1.xyzw);
    /* 0838 */ r0.w = SM2_MAX(r0.wwww, c32.wwww);
    /* 0848 */ r0.xy = SM2_MIN(r0.wwww, c32.xxxx);
    /* 0858 */ r0.zw = SM2_MOV(c52.wwww);
    /* 0864 */ oT3.z = SM2_MOV(c32.wwww);
    /* 0870 */ r0.xyzw = SM2_LIT(r0.xyzw);
    /* 087c */ oD0.xyz = SM2_MOV(c49.xyzw);
    /* 0888 */ oD0.w = SM2_MOV(r0.zzzz);
    return;
}
