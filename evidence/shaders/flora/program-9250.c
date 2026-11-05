/* Analyst instruction translation of the complete original ps_2_0 program 9250.
 * This is shader pseudocode, not Ghidra native C or an executable host shader.
 * SM2_* helpers preserve shader instruction semantics, masks and modifiers;
 * _pp requests partial precision; RCP/RSQ/MAD/LIT and sample filtering do not
 * promise binary32 host arithmetic, contraction, exact hardware rounding or
 * a D3D alpha-test quantizer. Relative constants use the original address register.
 * Register spelling: oT=texture coordinate, oD=color, oPos=position.
 * Alpha at007C: oC0.a = interpolated oT1.w - diffuse.a.
 * RGB follows the original lighting interpolation; no in-shader discard.
 */
void Program9250(ShaderRegisters &R)
{
    /* 0004 */ // Input declaration 0x80000000, v0.xyzw
    /* 0010 */ // Input declaration 0x80000000, t1.xyzw
    /* 001c */ // Input declaration 0x90000000, s0.xyzw
    /* 0028 */ r0.xyzw = SM2_TEX_pp(t1.xyzw, s0.xyzw);
    /* 0038 */ r1.y = SM2_MOV_pp(t1.zzzz);
    /* 0044 */ r1.xyz = SM2_MAD_pp(r0.xyzw, -r1.yyyy, v0.xyzw);
    /* 0058 */ r1.xyz = SM2_MUL_pp(r1.xyzw, v0.wwww);
    /* 0068 */ r0.xyz = SM2_MAD_pp(r0.xyzw, t1.zzzz, r1.xyzw);
    /* 007c */ r0.w = SM2_ADD_pp(-r0.wwww, t1.wwww);
    /* 008c */ oC0.xyzw = SM2_MOV_pp(r0.xyzw);
    return;
}
