/* Analyst instruction translation of the complete original ps_2_0 program 9284.
 * This is shader pseudocode, not Ghidra native C or an executable host shader.
 * SM2_* helpers preserve shader instruction semantics, masks and modifiers;
 * _pp requests partial precision; RCP/RSQ/MAD/LIT and sample filtering do not
 * promise binary32 host arithmetic, contraction, exact hardware rounding or
 * a D3D alpha-test quantizer. Relative constants use the original address register.
 * Register spelling: oT=texture coordinate, oD=color, oPos=position.
 * A=texture(t1.xy), B=texture(t2.xy), W=t2.z. D3D LRP gives C=W*A+(1-W)*B.
 * Alpha at00D0: oC0.a=1-2*C.a; W is not saturated.
 * This ordering is not GLSL mix(A,B,W), whose sample weights are reversed.
 * No in-shader alpha test; PASS authors LESS/ref1.
 */
void Program9284(ShaderRegisters &R)
{
    /* 0004 */ c0.xyzw = float4(2.0, 1.0, 0.0, 0.0);
    /* 001c */ // Input declaration 0x80000000, t1.xy
    /* 0028 */ // Input declaration 0x80000000, t2.xyz
    /* 0034 */ // Input declaration 0x80000000, v0.xyzw
    /* 0040 */ // Input declaration 0x80000000, v1.xyz
    /* 004c */ // Input declaration 0x90000000, s0.xyzw
    /* 0058 */ r2.xyzw = SM2_TEX_pp(t2.xyzw, s0.xyzw);
    /* 0068 */ r1.xyzw = SM2_TEX_pp(t1.xyzw, s0.xyzw);
    /* 0078 */ r0.xyzw = SM2_LRP_pp(t2.zzzz, r1.xyzw, r2.xyzw);
    /* 008c */ r1.xyz = SM2_MOV_pp(v1.xyzw);
    /* 0098 */ r1.xyz = SM2_MAD_pp(r0.xyzw, -r1.xyzw, v0.xyzw);
    /* 00ac */ r1.xyz = SM2_MUL_pp(r1.xyzw, v0.wwww);
    /* 00bc */ r0.xyz = SM2_MAD_pp(r0.xyzw, v1.xyzw, r1.xyzw);
    /* 00d0 */ r0.w = SM2_MAD_pp(c0.xxxx, -r0.wwww, c0.yyyy);
    /* 00e4 */ oC0.xyzw = SM2_MOV_pp(r0.xyzw);
    return;
}
