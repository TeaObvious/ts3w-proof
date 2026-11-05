# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: SimHeadIsolationModifier_ComputeFadeThresholds
; Owned ranges: [[0069a1c0, 0069a386]]
; Actual entry PLATE: Static PC1.67: ECX modifier, one stack output pointer, RET4. Reads retained model at modifier+8 then flags+38; species maskCF00 zero normalizes to100. For100, age mask7F cases2/4/8/40hex/default select original F32globals1159A30/2C/28/24/20 (.84/1.26/1.84/1.81/1.84 defaults), returning x87 Y without writing the output. Species200/300/400/500 select Y/Z by exact mask60!=0: Y .8/1.4,.06/.175,.07/.45,.06/.15 and Z .2/.35,0/.05,0/.2,0/.05. Unknown non100 returns x87+0 without output write; caller initializes Z+0. At69A277 the MOVSS load is F32bits3E333333 (.175), not the numeric integer cast shown by genuine C. No bone/joint/bounds query or child call. Raw flags, globals, out-pointer behavior and stored ABI remain unchanged; these material thresholds are not a CPU cutoff.

0069a1c0  8b4108  MOV EAX,dword ptr [ECX + 0x8]
0069a1c3  8b5038  MOV EDX,dword ptr [EAX + 0x38]
0069a1c6  8bc2  MOV EAX,EDX
0069a1c8  2500cf0000  AND EAX,0xcf00
0069a1cd  8bc8  MOV ECX,EAX
0069a1cf  f7c100cf0000  TEST ECX,0xcf00
0069a1d5  7506  JNZ 0x0069a1dd
0069a1d7  81c900010000  OR ECX,0x100
0069a1dd  81e100cf0000  AND ECX,0xcf00
0069a1e3  81f900010000  CMP ECX,0x100
0069a1e9  7546  JNZ 0x0069a231
0069a1eb  83e27f  AND EDX,0x7f
0069a1ee  8d42fe  LEA EAX,[EDX + -0x2]
0069a1f1  83f83e  CMP EAX,0x3e
0069a1f4  7732  JA 0x0069a228
0069a1f6  0fb6889ca36900  MOVZX ECX,byte ptr [EAX + 0x69a39c]
0069a1fd  ff248d88a36900  JMP dword ptr [ECX*0x4 + 0x69a388]
0069a204  d905309a1501  FLD float ptr [0x01159a30]
0069a20a  c20400  RET 0x4
0069a20d  d9052c9a1501  FLD float ptr [0x01159a2c]
0069a213  c20400  RET 0x4
0069a216  d905289a1501  FLD float ptr [0x01159a28]
0069a21c  c20400  RET 0x4
0069a21f  d905249a1501  FLD float ptr [0x01159a24]
0069a225  c20400  RET 0x4
0069a228  d905209a1501  FLD float ptr [0x01159a20]
0069a22e  c20400  RET 0x4
0069a231  f6c260  TEST DL,0x60
0069a234  0f95c1  SETNZ CL
0069a237  3d00040000  CMP EAX,0x400
0069a23c  0f8ff2000000  JG 0x0069a334
0069a242  0f84a5000000  JZ 0x0069a2ed
0069a248  3d00020000  CMP EAX,0x200
0069a24d  7452  JZ 0x0069a2a1
0069a24f  3d00030000  CMP EAX,0x300
0069a254  0f85e1000000  JNZ 0x0069a33b
0069a25a  84c9  TEST CL,CL
0069a25c  740a  JZ 0x0069a268
0069a25e  f30f100588d70601  MOVSS XMM0,dword ptr [0x0106d788]
0069a266  eb03  JMP 0x0069a26b
0069a268  0f57c0  XORPS XMM0,XMM0
0069a26b  84c9  TEST CL,CL
0069a26d  8b542404  MOV EDX,dword ptr [ESP + 0x4]
0069a271  f30f1102  MOVSS dword ptr [EDX],XMM0
0069a275  7415  JZ 0x0069a28c
0069a277  f30f10054c40ff00  MOVSS XMM0,dword ptr [0x00ff404c]
0069a27f  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
0069a285  d9442404  FLD float ptr [ESP + 0x4]
0069a289  c20400  RET 0x4
0069a28c  f30f1005fce4f900  MOVSS XMM0,dword ptr [0x00f9e4fc]
0069a294  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
0069a29a  d9442404  FLD float ptr [ESP + 0x4]
0069a29e  c20400  RET 0x4
0069a2a1  84c9  TEST CL,CL
0069a2a3  740a  JZ 0x0069a2af
0069a2a5  f30f1005e43aff00  MOVSS XMM0,dword ptr [0x00ff3ae4]
0069a2ad  eb08  JMP 0x0069a2b7
0069a2af  f30f100514b2fa00  MOVSS XMM0,dword ptr [0x00fab214]
0069a2b7  84c9  TEST CL,CL
0069a2b9  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0069a2bd  f30f1100  MOVSS dword ptr [EAX],XMM0
0069a2c1  7415  JZ 0x0069a2d8
0069a2c3  f30f100564e4fe00  MOVSS XMM0,dword ptr [0x00fee464]
0069a2cb  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
0069a2d1  d9442404  FLD float ptr [ESP + 0x4]
0069a2d5  c20400  RET 0x4
0069a2d8  f30f10051ce5f900  MOVSS XMM0,dword ptr [0x00f9e51c]
0069a2e0  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
0069a2e6  d9442404  FLD float ptr [ESP + 0x4]
0069a2ea  c20400  RET 0x4
0069a2ed  84c9  TEST CL,CL
0069a2ef  740a  JZ 0x0069a2fb
0069a2f1  f30f100514b2fa00  MOVSS XMM0,dword ptr [0x00fab214]
0069a2f9  eb03  JMP 0x0069a2fe
0069a2fb  0f57c0  XORPS XMM0,XMM0
0069a2fe  84c9  TEST CL,CL
0069a300  8b542404  MOV EDX,dword ptr [ESP + 0x4]
0069a304  f30f1102  MOVSS dword ptr [EDX],XMM0
0069a308  7415  JZ 0x0069a31f
0069a30a  f30f10054840ff00  MOVSS XMM0,dword ptr [0x00ff4048]
0069a312  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
0069a318  d9442404  FLD float ptr [ESP + 0x4]
0069a31c  c20400  RET 0x4
0069a31f  f30f10053031fc00  MOVSS XMM0,dword ptr [0x00fc3130]
0069a327  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
0069a32d  d9442404  FLD float ptr [ESP + 0x4]
0069a331  c20400  RET 0x4
0069a334  3d00050000  CMP EAX,0x500
0069a339  7405  JZ 0x0069a340
0069a33b  d9ee  FLDZ
0069a33d  c20400  RET 0x4
0069a340  84c9  TEST CL,CL
0069a342  740a  JZ 0x0069a34e
0069a344  f30f100588d70601  MOVSS XMM0,dword ptr [0x0106d788]
0069a34c  eb03  JMP 0x0069a351
0069a34e  0f57c0  XORPS XMM0,XMM0
0069a351  84c9  TEST CL,CL
0069a353  8b442404  MOV EAX,dword ptr [ESP + 0x4]
0069a357  f30f1100  MOVSS dword ptr [EAX],XMM0
0069a35b  7415  JZ 0x0069a372
0069a35d  f30f1005e4c40601  MOVSS XMM0,dword ptr [0x0106c4e4]
0069a365  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
0069a36b  d9442404  FLD float ptr [ESP + 0x4]
0069a36f  c20400  RET 0x4
0069a372  f30f1005fce4f900  MOVSS XMM0,dword ptr [0x00f9e4fc]
0069a37a  f30f11442404  MOVSS dword ptr [ESP + 0x4],XMM0
0069a380  d9442404  FLD float ptr [ESP + 0x4]
0069a384  c20400  RET 0x4
