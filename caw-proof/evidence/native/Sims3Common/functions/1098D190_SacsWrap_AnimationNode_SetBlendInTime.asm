# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d190 (SacsWrap_AnimationNode_SetBlendInTime)
Paired Ghidra pseudocode: 1098D190_SacsWrap_AnimationNode_SetBlendInTime.c
Window: [0x1098d190, 0x1098d1e0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d1e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d190: 83 ec 10 56 8b 74 24 18 85 f6 74 35 8d 44 24 04
1098d1a0: 50 8b ce e8 e8 9a c5 ff d9 44 24 10 83 ec 10 d9
1098d1b0: 5c 24 0c 8b ce d9 44 24 1c d9 5c 24 08 d9 44 24
1098d1c0: 2c d9 5c 24 04 d9 44 24 14 d9 1c 24 e8 df 9a c5
1098d1d0: ff 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d190 <.text+0x98c190>:
1098d190:	83 ec 10                                        	sub    esp,0x10
1098d193:	56                                              	push   esi
1098d194:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1098d198:	85 f6                                           	test   esi,esi
1098d19a:	74 35                                           	je     0x1098d1d1
1098d19c:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1098d1a0:	50                                              	push   eax
1098d1a1:	8b ce                                           	mov    ecx,esi
1098d1a3:	e8 e8 9a c5 ff                                  	call   0x105e6c90
1098d1a8:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
1098d1ac:	83 ec 10                                        	sub    esp,0x10
1098d1af:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1098d1b3:	8b ce                                           	mov    ecx,esi
1098d1b5:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
1098d1b9:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1098d1bd:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
1098d1c1:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1098d1c5:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
1098d1c9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098d1cc:	e8 df 9a c5 ff                                  	call   0x105e6cb0
1098d1d1:	5e                                              	pop    esi
1098d1d2:	83 c4 10                                        	add    esp,0x10
1098d1d5:	c3                                              	ret
1098d1d6:	cc                                              	int3
1098d1d7:	cc                                              	int3
1098d1d8:	cc                                              	int3
1098d1d9:	cc                                              	int3
1098d1da:	cc                                              	int3
1098d1db:	cc                                              	int3
1098d1dc:	cc                                              	int3
1098d1dd:	cc                                              	int3
1098d1de:	cc                                              	int3
1098d1df:	cc                                              	int3
