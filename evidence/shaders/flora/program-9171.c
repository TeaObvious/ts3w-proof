/* Analyst instruction translation of the complete original vs_2_0 program 9171.
 * This is shader pseudocode, not Ghidra native C or an executable host shader.
 * SM2_* helpers preserve shader instruction semantics, masks and modifiers;
 * _pp requests partial precision; RCP/RSQ/MAD/LIT and sample filtering do not
 * promise binary32 host arithmetic, contraction, exact hardware rounding or
 * a D3D alpha-test quantizer. Relative constants use the original address register.
 * Register spelling: oT=texture coordinate, oD=color, oPos=position.
 */
void Program9171(ShaderRegisters &R)
{
    /* 0004 */ c91.xyzw = float4(0.007874015718698502, -1.0, 1.0, 3.0);
    /* 001c */ c92.xyzw = float4(0.0, 0.0, 0.0, 0.0);
    /* 0034 */ // Input declaration 0x80000000, v0.xyzw
    /* 0040 */ // Input declaration 0x80000003, v1.xyzw
    /* 004c */ // Input declaration 0x80000005, v2.xyzw
    /* 0058 */ // Input declaration 0x80010005, v3.xyzw
    /* 0064 */ // Input declaration 0x80020005, v4.xyzw
    /* 0070 */ // Input declaration 0x80030005, v5.xyzw
    /* 007c */ r0.w = SM2_RCP(v2.wwww);
    /* 0088 */ oT1.xy = SM2_MUL(r0.wwww, v2.xyzw);
    /* 0098 */ r0.w = SM2_RCP(v3.wwww);
    /* 00a4 */ r1.w = SM2_RCP(v0.wwww);
    /* 00b0 */ r0.xyz = SM2_MUL(r1.wwww, v0.xyzw);
    /* 00c0 */ a0.xy = SM2_MOVA(v5.zwzw);
    /* 00cc */ oT2.xy = SM2_MUL(r0.wwww, v3.xyzw);
    /* 00dc */ r0.yzw = SM2_MUL(r0.xyxz, c[2 + a0.xxxx].xxxx);
    /* 00f0 */ r1.w = SM2_RCP(v4.wwww);
    /* 00fc */ r0.x = SM2_DP3(r0.zwyw, c[1 + a0.xxxx].xzww);
    /* 0110 */ r0.z = SM2_DP3(r0.wzyw, c[1 + a0.xxxx].xyww);
    /* 0124 */ r0.xyz = SM2_ADD(r0.xyzw, c[0 + a0.xxxx].xyzw);
    /* 0138 */ r0.w = SM2_MOV(c91.zzzz);
    /* 0144 */ oT3.xy = SM2_MUL(r1.wwww, v4.xyzw);
    /* 0154 */ oPos.x = SM2_DP4(r0.xyzw, c81.xyzw);
    /* 0164 */ oPos.y = SM2_DP4(r0.xyzw, c82.xyzw);
    /* 0174 */ oPos.z = SM2_DP4(r0.xyzw, c83.xyzw);
    /* 0184 */ oPos.w = SM2_DP4(r0.xyzw, c84.xyzw);
    /* 0194 */ r2.x = SM2_DP3(-r0.xyzw, -r0.xyzw);
    /* 01a4 */ r0.w = SM2_MUL(v5.yyyy, c91.wwww);
    /* 01b4 */ r0.xyz = SM2_MAD(v1.xyzw, c91.xxxx, c91.yyyy);
    /* 01c8 */ a0.w = SM2_MOVA(r0.wwww);
    /* 01d4 */ r1.x = SM2_DP3(r0.xzyw, c[1 + a0.xxxx].xzww);
    /* 01e8 */ r1.z = SM2_DP3(r0.zxyw, c[1 + a0.xxxx].xyww);
    /* 01fc */ r1.y = SM2_MAD(v1.yyyy, c91.xxxx, c91.yyyy);
    /* 0210 */ r0.y = SM2_DP3(c[27 + a0.wwww].xyzw, r1.xyzw);
    /* 0224 */ r0.z = SM2_DP3(c[28 + a0.wwww].xyzw, r1.xyzw);
    /* 0238 */ r0.w = SM2_DP3(c[29 + a0.wwww].xyzw, r1.xyzw);
    /* 024c */ r0.x = SM2_DP3(c86.xyzw, r1.xyzw);
    /* 025c */ r2.y = SM2_MOV(c91.zzzz);
    /* 0268 */ r1.w = SM2_ADD(r2.yyyy, -c90.zzzz);
    /* 0278 */ r0.xyzw = SM2_MAX(r0.xyzw, c92.xxxx);
    /* 0288 */ oT0.xyz = SM2_MOV(r1.xyzw);
    /* 0294 */ oT1.z = SM2_MAD(r0.xxxx, r1.wwww, c90.zzzz);
    /* 02a8 */ r1.xyz = SM2_MUL(r0.wwww, c[56 + a0.yyyy].xyzw);
    /* 02bc */ r0.w = SM2_RSQ(r2.xxxx);
    /* 02c8 */ oT4.xyz = SM2_MAD(r0.zzzz, c[55 + a0.yyyy].xyzw, r1.xyzw);
    /* 02e0 */ r0.w = SM2_RCP(r0.wwww);
    /* 02ec */ r1.w = SM2_MAD(r0.wwww, c89.xxxx, c89.yyyy);
    /* 0300 */ r0.w = SM2_ADD(r0.wwww, -c88.yyyy);
    /* 0310 */ r1.w = SM2_MAX(r1.wwww, c92.xxxx);
    /* 0320 */ r0.w = SM2_MUL(r0.wwww, c88.xxxx);
    /* 0330 */ r1.w = SM2_MIN(r1.wwww, c91.zzzz);
    /* 0340 */ r0.w = SM2_MAX(r0.wwww, c92.xxxx);
    /* 0350 */ r1.w = SM2_ADD(-r1.wwww, c91.zzzz);
    /* 0360 */ r0.w = SM2_MIN(r0.wwww, c91.zzzz);
    /* 0370 */ oT1.w = SM2_MOV(r0.yyyy);
    /* 037c */ r0.w = SM2_MAD(c88.zzzz, r0.wwww, r1.wwww);
    /* 0390 */ oD0.xyz = SM2_MOV(c[54 + a0.yyyy].xyzw);
    /* 03a0 */ r0.w = SM2_MAX(r0.wwww, c92.xxxx);
    /* 03b0 */ r0.xy = SM2_MIN(r0.wwww, c91.zzzz);
    /* 03c0 */ r0.zw = SM2_MOV(c89.wwww);
    /* 03cc */ oD0.w = SM2_MOV(c[2 + a0.xxxx].yyyy);
    /* 03dc */ r0.xyzw = SM2_LIT(r0.xyzw);
    /* 03e8 */ oD1.xyz = SM2_MOV(c87.xyzw);
    /* 03f4 */ oD1.w = SM2_MOV(r0.zzzz);
    return;
}
