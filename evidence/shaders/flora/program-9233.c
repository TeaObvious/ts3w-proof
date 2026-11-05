/* Analyst instruction translation of the complete original vs_2_0 program 9233.
 * This is shader pseudocode, not Ghidra native C or an executable host shader.
 * SM2_* helpers preserve shader instruction semantics, masks and modifiers;
 * _pp requests partial precision; RCP/RSQ/MAD/LIT and sample filtering do not
 * promise binary32 host arithmetic, contraction, exact hardware rounding or
 * a D3D alpha-test quantizer. Relative constants use the original address register.
 * Register spelling: oT=texture coordinate, oD=color, oPos=position.
 */
void Program9233(ShaderRegisters &R)
{
    /* 0004 */ c92.xyzw = float4(0.0, 0.0, 0.0, 0.0);
    /* 001c */ c93.xyzw = float4(0.007874015718698502, -1.0, 1.0, 3.0);
    /* 0034 */ // Input declaration 0x80000000, v0.xyzw
    /* 0040 */ // Input declaration 0x80000003, v1.xyzw
    /* 004c */ // Input declaration 0x80000005, v2.xyzw
    /* 0058 */ // Input declaration 0x80020005, v3.xyzw
    /* 0064 */ // Input declaration 0x80030005, v4.xyzw
    /* 0070 */ // Input declaration 0x80040005, v5.xyzw
    /* 007c */ // Input declaration 0x80050005, v6.xyzw
    /* 0088 */ r0.w = SM2_RCP(v5.wwww);
    /* 0094 */ r2.xyz = SM2_MUL(r0.wwww, v5.xyzw);
    /* 00a4 */ r6.xyz = SM2_MAD(v3.xyzw, c93.xxxx, c93.yyyy);
    /* 00b8 */ r4.xyz = SM2_MAD(v4.xyzw, c93.xxxx, c93.yyyy);
    /* 00cc */ r0.xyz = SM2_MUL(r6.yzxw, r4.zxyw);
    /* 00dc */ r0.w = SM2_RCP(v0.wwww);
    /* 00e8 */ r0.xyz = SM2_MAD(r4.yzxw, r6.zxyw, -r0.xyzw);
    /* 00fc */ r5.xyz = SM2_MUL(r0.wwww, v0.xyzw);
    /* 010c */ r1.y = SM2_MOV(r2.yyyy);
    /* 0118 */ r3.y = SM2_DP3(r0.xyzw, r5.xyzw);
    /* 0128 */ r0.y = SM2_MOV(r3.yyyy);
    /* 0134 */ r3.x = SM2_DP3(r6.xyzw, r5.xyzw);
    /* 0144 */ r3.z = SM2_DP3(r4.xyzw, r5.xyzw);
    /* 0154 */ a0.z = SM2_MOVA(v6.wwww);
    /* 0160 */ r0.x = SM2_DP3(r3.xzyw, c[1 + a0.zzzz].xzww);
    /* 0174 */ r0.z = SM2_DP3(r3.zxyw, c[1 + a0.zzzz].xyww);
    /* 0188 */ r1.x = SM2_DP3(r2.xzyw, c[1 + a0.zzzz].xzww);
    /* 019c */ r1.z = SM2_DP3(r2.zxyw, c[1 + a0.zzzz].xyww);
    /* 01b0 */ r0.xyz = SM2_ADD(r1.xyzw, r0.xyzw);
    /* 01c0 */ r0.w = SM2_MOV(c[2 + a0.zzzz].xxxx);
    /* 01d0 */ r1.xyz = SM2_MAD(r0.xyzw, r0.wwww, c[0 + a0.zzzz].xyzw);
    /* 01e8 */ r1.w = SM2_MOV(c93.zzzz);
    /* 01f4 */ oPos.x = SM2_DP4(r1.xyzw, c81.xyzw);
    /* 0204 */ oPos.y = SM2_DP4(r1.xyzw, c82.xyzw);
    /* 0214 */ oPos.z = SM2_DP4(r1.xyzw, c83.xyzw);
    /* 0224 */ r0.xyz = SM2_MAD(v1.xyzw, c93.xxxx, c93.yyyy);
    /* 0238 */ oPos.w = SM2_DP4(r1.xyzw, c84.xyzw);
    /* 0248 */ r2.x = SM2_DP3(r0.xzyw, c[1 + a0.zzzz].xzww);
    /* 025c */ r2.z = SM2_DP3(r0.zxyw, c[1 + a0.zzzz].xyww);
    /* 0270 */ r0.w = SM2_MUL(v6.zzzz, c93.wwww);
    /* 0280 */ r2.y = SM2_MAD(v1.yyyy, c93.xxxx, c93.yyyy);
    /* 0294 */ a0.w = SM2_MOVA(r0.wwww);
    /* 02a0 */ r0.x = SM2_DP3(c86.xyzw, r2.xyzw);
    /* 02b0 */ r0.y = SM2_DP3(c[27 + a0.wwww].xyzw, r2.xyzw);
    /* 02c4 */ r0.z = SM2_DP3(c[28 + a0.wwww].xyzw, r2.xyzw);
    /* 02d8 */ r0.w = SM2_DP3(c[29 + a0.wwww].xyzw, r2.xyzw);
    /* 02ec */ r0.xyzw = SM2_MAX(r0.xyzw, c92.xxxx);
    /* 02fc */ r3.y = SM2_MOV(c93.zzzz);
    /* 0308 */ r1.w = SM2_ADD(r3.yyyy, -c90.zzzz);
    /* 0318 */ r3.xyz = SM2_MUL(r0.yyyy, c[54 + a0.wwww].xyzw);
    /* 032c */ r1.w = SM2_MAD(r0.xxxx, r1.wwww, c90.zzzz);
    /* 0340 */ r4.x = SM2_DP3(-r1.xyzw, -r1.xyzw);
    /* 0350 */ r1.xyz = SM2_MAD(r1.wwww, c85.xyzw, r3.xyzw);
    /* 0364 */ oT1.w = SM2_MOV(c[2 + a0.zzzz].yyyy);
    /* 0374 */ r0.xyz = SM2_MAD(r0.zzzz, c[55 + a0.wwww].xyzw, r1.xyzw);
    /* 038c */ oT0.xyz = SM2_MOV(r2.xyzw);
    /* 0398 */ r0.xyz = SM2_MAD(r0.wwww, c[56 + a0.wwww].xyzw, r0.xyzw);
    /* 03b0 */ r0.w = SM2_MOV(c90.xxxx);
    /* 03bc */ r2.w = SM2_MAD(r0.wwww, r0.xxxx, c91.xxxx);
    /* 03d0 */ r1.xyz = SM2_MUL(r0.xyzw, c90.xxxx);
    /* 03e0 */ r1.w = SM2_RCP(v2.wwww);
    /* 03ec */ r0.w = SM2_RSQ(r4.xxxx);
    /* 03f8 */ r0.xyz = SM2_MUL(r1.wwww, v2.xyzw);
    /* 0408 */ r0.w = SM2_RCP(r0.wwww);
    /* 0414 */ r1.w = SM2_MAD(r0.wwww, c89.xxxx, c89.yyyy);
    /* 0428 */ r0.w = SM2_ADD(r0.wwww, -c88.yyyy);
    /* 0438 */ r1.w = SM2_MAX(r1.wwww, c92.xxxx);
    /* 0448 */ r0.w = SM2_MUL(r0.wwww, c88.xxxx);
    /* 0458 */ r1.w = SM2_MIN(r1.wwww, c93.zzzz);
    /* 0468 */ r0.w = SM2_MAX(r0.wwww, c92.xxxx);
    /* 0478 */ r1.w = SM2_ADD(-r1.wwww, c93.zzzz);
    /* 0488 */ r0.w = SM2_MIN(r0.wwww, c93.zzzz);
    /* 0498 */ oT1.z = SM2_MUL(r2.wwww, r0.zzzz);
    /* 04a8 */ r0.w = SM2_MAD(c88.zzzz, r0.wwww, r1.wwww);
    /* 04bc */ oT1.xy = SM2_MOV(r0.xyzw);
    /* 04c8 */ r0.w = SM2_MAX(r0.wwww, c92.xxxx);
    /* 04d8 */ r0.xy = SM2_MIN(r0.wwww, c93.zzzz);
    /* 04e8 */ r0.zw = SM2_MOV(c89.wwww);
    /* 04f4 */ oD0.xyz = SM2_MOV(c87.xyzw);
    /* 0500 */ r0.xyzw = SM2_LIT(r0.xyzw);
    /* 050c */ oD0.w = SM2_MOV(r0.zzzz);
    /* 0518 */ oD1.xyz = SM2_MOV(r1.xyzw);
    return;
}
