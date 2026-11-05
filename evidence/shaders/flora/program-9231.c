/* Analyst instruction translation of the complete original vs_2_0 program 9231.
 * This is shader pseudocode, not Ghidra native C or an executable host shader.
 * SM2_* helpers preserve shader instruction semantics, masks and modifiers;
 * _pp requests partial precision; RCP/RSQ/MAD/LIT and sample filtering do not
 * promise binary32 host arithmetic, contraction, exact hardware rounding or
 * a D3D alpha-test quantizer. Relative constants use the original address register.
 * Register spelling: oT=texture coordinate, oD=color, oPos=position.
 */
void Program9231(ShaderRegisters &R)
{
    /* 0004 */ c81.xyzw = float4(-0.5, 0.5, 0.007874015718698502, -1.0);
    /* 001c */ c82.xyzw = float4(0.5, 0.5, 3.0, 0.0);
    /* 0034 */ c83.xyzw = float4(0.5, -0.5, 6.103515625e-05, 0.0);
    /* 004c */ c84.xyzw = float4(-0.5, -0.5, 0.0, 0.0);
    /* 0064 */ // Input declaration 0x80000000, v0.xyzw
    /* 0070 */ // Input declaration 0x80000003, v1.xyzw
    /* 007c */ // Input declaration 0x80000005, v2.xyzw
    /* 0088 */ // Input declaration 0x80010005, v3.xyzw
    /* 0094 */ // Input declaration 0x80020005, v4.xyzw
    /* 00a0 */ // Input declaration 0x80030005, v5.xyzw
    /* 00ac */ r1.w = SM2_RCP(v4.wwww);
    /* 00b8 */ a0.w = SM2_MOVA(v5.zzzz);
    /* 00c4 */ r0.w = SM2_RCP(v3.wwww);
    /* 00d0 */ r0.xy = SM2_MAD(v4.xyzw, -r1.wwww, c[81 + a0.wwww].xyzw);
    /* 00e8 */ r1.xyz = SM2_MUL(r0.wwww, v3.xyzw);
    /* 00f8 */ r0.xy = SM2_MUL(r0.xyzw, r1.xyzw);
    /* 0108 */ r0.z = SM2_MOV(c82.wwww);
    /* 0114 */ r2.x = SM2_DP3(r0.xyzw, c89.xyzw);
    /* 0124 */ r2.y = SM2_DP3(r0.xyzw, c90.xyzw);
    /* 0134 */ r2.z = SM2_DP3(r0.xyzw, c91.xyzw);
    /* 0144 */ r0.w = SM2_RCP(v0.wwww);
    /* 0150 */ r3.xyz = SM2_MUL(r0.wwww, v0.xyzw);
    /* 0160 */ r0.w = SM2_MUL(v5.wwww, c82.zzzz);
    /* 0170 */ r0.y = SM2_MOV(r3.yyyy);
    /* 017c */ a0.w = SM2_MOVA(r0.wwww);
    /* 0188 */ r0.x = SM2_DP3(r3.xzyw, c[1 + a0.wwww].xzww);
    /* 019c */ r0.z = SM2_DP3(r3.zxyw, c[1 + a0.wwww].xyww);
    /* 01b0 */ r0.xyz = SM2_ADD(r2.xyzw, r0.xyzw);
    /* 01c0 */ r0.w = SM2_MOV(c[2 + a0.wwww].xxxx);
    /* 01d0 */ r0.xyz = SM2_MAD(r0.xyzw, r0.wwww, c[0 + a0.wwww].xyzw);
    /* 01e8 */ r0.w = SM2_MOV(-c81.wwww);
    /* 01f4 */ oT1.z = SM2_MOV(r1.zzzz);
    /* 0200 */ oPos.x = SM2_DP4(r0.xyzw, c85.xyzw);
    /* 0210 */ oPos.y = SM2_DP4(r0.xyzw, c86.xyzw);
    /* 0220 */ oPos.z = SM2_DP4(r0.xyzw, c87.xyzw);
    /* 0230 */ oPos.w = SM2_DP4(r0.xyzw, c88.xyzw);
    /* 0240 */ r3.x = SM2_DP3(-r0.xyzw, -r0.xyzw);
    /* 0250 */ r2.y = SM2_MAD(v1.yyyy, c81.zzzz, c81.wwww);
    /* 0264 */ r0.xyz = SM2_MAD(v1.xyzw, c81.zzzz, c81.wwww);
    /* 0278 */ r2.x = SM2_DP3(r0.xzyw, c[1 + a0.wwww].xzww);
    /* 028c */ r2.z = SM2_DP3(r0.zxyw, c[1 + a0.wwww].xyww);
    /* 02a0 */ r0.y = SM2_DP3(c[27 + a0.wwww].xyzw, r2.xyzw);
    /* 02b4 */ r0.z = SM2_DP3(c[28 + a0.wwww].xyzw, r2.xyzw);
    /* 02c8 */ r0.w = SM2_DP3(c[29 + a0.wwww].xyzw, r2.xyzw);
    /* 02dc */ r0.x = SM2_DP3(c93.xyzw, r2.xyzw);
    /* 02ec */ r0.xyzw = SM2_MAX(r0.xyzw, c82.wwww);
    /* 02fc */ r1.x = SM2_MOV(c81.wwww);
    /* 0308 */ r1.w = SM2_ADD(-r1.xxxx, -c97.zzzz);
    /* 0318 */ r1.xyz = SM2_MUL(r0.yyyy, c[54 + a0.wwww].xyzw);
    /* 032c */ r1.w = SM2_MAD(r0.xxxx, r1.wwww, c97.zzzz);
    /* 0340 */ oT0.xyz = SM2_MOV(r2.xyzw);
    /* 034c */ r1.xyz = SM2_MAD(r1.wwww, c92.xyzw, r1.xyzw);
    /* 0360 */ r0.xyz = SM2_MAD(r0.zzzz, c[55 + a0.wwww].xyzw, r1.xyzw);
    /* 0378 */ r1.w = SM2_RSQ(r3.xxxx);
    /* 0384 */ r0.xyz = SM2_MAD(r0.wwww, c[56 + a0.wwww].xyzw, r0.xyzw);
    /* 039c */ r0.w = SM2_RCP(r1.wwww);
    /* 03a8 */ r1.w = SM2_MAD(r0.wwww, c96.xxxx, c96.yyyy);
    /* 03bc */ r0.w = SM2_ADD(r0.wwww, -c95.yyyy);
    /* 03cc */ r1.w = SM2_MAX(r1.wwww, c82.wwww);
    /* 03dc */ r0.w = SM2_MUL(r0.wwww, c95.xxxx);
    /* 03ec */ r1.w = SM2_MIN(r1.wwww, -c81.wwww);
    /* 03fc */ r0.w = SM2_MAX(r0.wwww, c82.wwww);
    /* 040c */ r1.w = SM2_ADD(-r1.wwww, -c81.wwww);
    /* 041c */ r0.w = SM2_MIN(r0.wwww, -c81.wwww);
    /* 042c */ oT1.w = SM2_MOV(c[2 + a0.wwww].yyyy);
    /* 043c */ r0.w = SM2_MAD(c95.zzzz, r0.wwww, r1.wwww);
    /* 0450 */ oD1.xyz = SM2_MUL(r0.xyzw, c97.xxxx);
    /* 0460 */ r0.w = SM2_MAX(r0.wwww, c82.wwww);
    /* 0470 */ r0.xy = SM2_MIN(r0.wwww, -c81.wwww);
    /* 0480 */ r0.zw = SM2_MOV(c96.wwww);
    /* 048c */ oD0.xyz = SM2_MOV(c94.xyzw);
    /* 0498 */ r0.xyzw = SM2_LIT(r0.xyzw);
    /* 04a4 */ oD0.w = SM2_MOV(r0.zzzz);
    /* 04b0 */ oT1.xy = SM2_MUL(v2.xyzw, c83.zzzz);
    return;
}
