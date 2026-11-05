/* Analyst instruction translation of the complete original ps_2_0 program 9172.
 * This is shader pseudocode, not Ghidra native C or an executable host shader.
 * SM2_* helpers preserve shader instruction semantics, masks and modifiers;
 * _pp requests partial precision; RCP/RSQ/MAD/LIT and sample filtering do not
 * promise binary32 host arithmetic, contraction, exact hardware rounding or
 * a D3D alpha-test quantizer. Relative constants use the original address register.
 * Register spelling: oT=texture coordinate, oD=color, oPos=position.
 * Alpha at0104: oC0.a = interpolated oD0.a - diffuse.a.
 * No texkill/discard instruction in this complete body.
 */
void Program9172(ShaderRegisters &R)
{
    /* 0004 */ // Input declaration 0x80000000, t1.xyzw
    /* 0010 */ // Input declaration 0x80000000, t2.xy
    /* 001c */ // Input declaration 0x80000000, t4.xyz
    /* 0028 */ // Input declaration 0x80000000, v0.xyzw
    /* 0034 */ // Input declaration 0x80000000, v1.xyzw
    /* 0040 */ // Input declaration 0x90000000, s0.xyzw
    /* 004c */ // Input declaration 0x90000000, s1.xyzw
    /* 0058 */ r1.xyzw = SM2_TEX_pp(t2.xyzw, s1.xyzw);
    /* 0068 */ r0.xyzw = SM2_TEX_pp(t1.xyzw, s0.xyzw);
    /* 0078 */ r1.w = SM2_MOV_sat_pp(t1.wwww);
    /* 0084 */ r2.xyz = SM2_MUL_pp(r1.wwww, v0.xyzw);
    /* 0094 */ r1.w = SM2_MOV_sat_pp(t1.zzzz);
    /* 00a0 */ r2.xyz = SM2_MAD_pp(r1.wwww, c0.xyzw, r2.xyzw);
    /* 00b4 */ r2.xyz = SM2_ADD_pp(r2.xyzw, t4.xyzw);
    /* 00c4 */ r1.w = SM2_MOV_pp(c1.xxxx);
    /* 00d0 */ r2.xyz = SM2_MAD_pp(r2.xyzw, r1.wwww, c2.xyzw);
    /* 00e4 */ r0.xyz = SM2_MUL_pp(r1.xyzw, r0.xyzw);
    /* 00f4 */ r1.xyz = SM2_MUL_sat_pp(r2.xyzw, r0.xyzw);
    /* 0104 */ r0.w = SM2_ADD_pp(-r0.wwww, v0.wwww);
    /* 0114 */ r0.xyz = SM2_LRP_pp(v1.wwww, v1.xyzw, r1.xyzw);
    /* 0128 */ oC0.xyzw = SM2_MOV_pp(r0.xyzw);
    return;
}
