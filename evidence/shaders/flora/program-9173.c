/* Analyst instruction translation of the complete original ps_2_0 program 9173.
 * This is shader pseudocode, not Ghidra native C or an executable host shader.
 * SM2_* helpers preserve shader instruction semantics, masks and modifiers;
 * _pp requests partial precision; RCP/RSQ/MAD/LIT and sample filtering do not
 * promise binary32 host arithmetic, contraction, exact hardware rounding or
 * a D3D alpha-test quantizer. Relative constants use the original address register.
 * Register spelling: oT=texture coordinate, oD=color, oPos=position.
 */
void Program9173(ShaderRegisters &R)
{
    /* 0004 */ // Input declaration 0x80000000, t1.xyzw
    /* 0010 */ // Input declaration 0x80000000, t4.xyz
    /* 001c */ // Input declaration 0x80000000, v0.xyzw
    /* 0028 */ // Input declaration 0x80000000, v1.xyzw
    /* 0034 */ // Input declaration 0x90000000, s0.xyzw
    /* 0040 */ r0.xyzw = SM2_TEX_pp(t1.xyzw, s0.xyzw);
    /* 0050 */ r2.xy = SM2_MOV_sat_pp(t1.wzyx);
    /* 005c */ r1.xyz = SM2_MUL_pp(r2.xxxx, v0.xyzw);
    /* 006c */ r1.xyz = SM2_MAD_pp(r2.yyyy, c0.xyzw, r1.xyzw);
    /* 0080 */ r1.xyz = SM2_ADD_pp(r1.xyzw, t4.xyzw);
    /* 0090 */ r1.w = SM2_MOV_pp(c1.xxxx);
    /* 009c */ r1.xyz = SM2_MAD_pp(r1.xyzw, r1.wwww, c2.xyzw);
    /* 00b0 */ r2.xyz = SM2_MAD_pp(r0.xyzw, -r1.xyzw, v1.xyzw);
    /* 00c4 */ r2.xyz = SM2_MUL_pp(r2.xyzw, v1.wwww);
    /* 00d4 */ r0.xyz = SM2_MAD_pp(r0.xyzw, r1.xyzw, r2.xyzw);
    /* 00e8 */ r0.w = SM2_ADD_pp(-r0.wwww, v0.wwww);
    /* 00f8 */ oC0.xyzw = SM2_MOV_pp(r0.xyzw);
    return;
}
