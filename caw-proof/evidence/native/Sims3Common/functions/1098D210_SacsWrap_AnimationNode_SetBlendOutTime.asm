# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d210 (SacsWrap_AnimationNode_SetBlendOutTime)
Paired Ghidra pseudocode: 1098D210_SacsWrap_AnimationNode_SetBlendOutTime.c
Window: [0x1098d210, 0x1098d260) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d210: 83 ec 10 56 8b 74 24 18 85 f6 74 35 8d 44 24 04
1098d220: 50 8b ce e8 68 9a c5 ff d9 44 24 10 83 ec 10 d9
1098d230: 5c 24 0c 8b ce d9 44 24 2c d9 5c 24 08 d9 44 24
1098d240: 18 d9 5c 24 04 d9 44 24 14 d9 1c 24 e8 5f 9a c5
1098d250: ff 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d210 <.text+0x98c210>:
1098d210:	83 ec 10                                        	sub    esp,0x10
1098d213:	56                                              	push   esi
1098d214:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1098d218:	85 f6                                           	test   esi,esi
1098d21a:	74 35                                           	je     0x1098d251
1098d21c:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1098d220:	50                                              	push   eax
1098d221:	8b ce                                           	mov    ecx,esi
1098d223:	e8 68 9a c5 ff                                  	call   0x105e6c90
1098d228:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
1098d22c:	83 ec 10                                        	sub    esp,0x10
1098d22f:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1098d233:	8b ce                                           	mov    ecx,esi
1098d235:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
1098d239:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1098d23d:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
1098d241:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1098d245:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
1098d249:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098d24c:	e8 5f 9a c5 ff                                  	call   0x105e6cb0
1098d251:	5e                                              	pop    esi
1098d252:	83 c4 10                                        	add    esp,0x10
1098d255:	c3                                              	ret
1098d256:	cc                                              	int3
1098d257:	cc                                              	int3
1098d258:	cc                                              	int3
1098d259:	cc                                              	int3
1098d25a:	cc                                              	int3
1098d25b:	cc                                              	int3
1098d25c:	cc                                              	int3
1098d25d:	cc                                              	int3
1098d25e:	cc                                              	int3
1098d25f:	cc                                              	int3
