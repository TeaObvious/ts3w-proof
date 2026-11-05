# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078ac90 (ScriptCore.World::World_LotGetPtInsideImpl)
Paired Ghidra pseudocode: 0078AC90_ScriptCore_World_World_LotGetPtInsideImpl.c
Window: [0x0078ac90, 0x0078ad70) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078ad70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078ac90: 51 56 57 8b 3d c4 db 1e 01 85 ff 74 15 8b 44 24
0078aca0: 18 8b 4c 24 14 6a 00 50 51 8b cf e8 60 7b 4d 00
0078acb0: eb 02 33 c0 85 c0 8b 74 24 10 0f 57 c0 f3 0f 11
0078acc0: 06 f3 0f 11 46 04 f3 0f 11 46 08 0f 84 8f 00 00
0078acd0: 00 f3 0f 10 80 4c 01 00 00 f3 0f 58 80 44 01 00
0078ace0: 00 f3 0f 58 80 3c 01 00 00 f3 0f 58 80 34 01 00
0078acf0: 00 f3 0f 10 0d c8 f8 06 01 6a 00 6a 00 f3 0f 59
0078ad00: c1 6a 00 f3 0f 11 44 24 14 f3 0f 11 06 f3 0f 10
0078ad10: 80 50 01 00 00 f3 0f 58 80 48 01 00 00 f3 0f 58
0078ad20: 80 40 01 00 00 f3 0f 58 80 38 01 00 00 6a 00 6a
0078ad30: 00 6a 01 f3 0f 59 c1 f3 0f 11 44 24 28 d9 44 24
0078ad40: 28 6a 00 83 ec 08 d9 5c 24 04 8b cf d9 44 24 2c
0078ad50: f3 0f 11 46 08 d9 1c 24 e8 33 f3 4d 00 d9 5e 04
0078ad60: 5f 8b c6 5e 59 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078ac90 <.text+0x389c90>:
  78ac90:	51                                              	push   ecx
  78ac91:	56                                              	push   esi
  78ac92:	57                                              	push   edi
  78ac93:	8b 3d c4 db 1e 01                               	mov    edi,DWORD PTR ds:0x11edbc4
  78ac99:	85 ff                                           	test   edi,edi
  78ac9b:	74 15                                           	je     0x78acb2
  78ac9d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  78aca1:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  78aca5:	6a 00                                           	push   0x0
  78aca7:	50                                              	push   eax
  78aca8:	51                                              	push   ecx
  78aca9:	8b cf                                           	mov    ecx,edi
  78acab:	e8 60 7b 4d 00                                  	call   0xc62810
  78acb0:	eb 02                                           	jmp    0x78acb4
  78acb2:	33 c0                                           	xor    eax,eax
  78acb4:	85 c0                                           	test   eax,eax
  78acb6:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  78acba:	0f 57 c0                                        	xorps  xmm0,xmm0
  78acbd:	f3 0f 11 06                                     	movss  DWORD PTR [esi],xmm0
  78acc1:	f3 0f 11 46 04                                  	movss  DWORD PTR [esi+0x4],xmm0
  78acc6:	f3 0f 11 46 08                                  	movss  DWORD PTR [esi+0x8],xmm0
  78accb:	0f 84 8f 00 00 00                               	je     0x78ad60
  78acd1:	f3 0f 10 80 4c 01 00 00                         	movss  xmm0,DWORD PTR [eax+0x14c]
  78acd9:	f3 0f 58 80 44 01 00 00                         	addss  xmm0,DWORD PTR [eax+0x144]
  78ace1:	f3 0f 58 80 3c 01 00 00                         	addss  xmm0,DWORD PTR [eax+0x13c]
  78ace9:	f3 0f 58 80 34 01 00 00                         	addss  xmm0,DWORD PTR [eax+0x134]
  78acf1:	f3 0f 10 0d c8 f8 06 01                         	movss  xmm1,DWORD PTR ds:0x106f8c8
  78acf9:	6a 00                                           	push   0x0
  78acfb:	6a 00                                           	push   0x0
  78acfd:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  78ad01:	6a 00                                           	push   0x0
  78ad03:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78ad09:	f3 0f 11 06                                     	movss  DWORD PTR [esi],xmm0
  78ad0d:	f3 0f 10 80 50 01 00 00                         	movss  xmm0,DWORD PTR [eax+0x150]
  78ad15:	f3 0f 58 80 48 01 00 00                         	addss  xmm0,DWORD PTR [eax+0x148]
  78ad1d:	f3 0f 58 80 40 01 00 00                         	addss  xmm0,DWORD PTR [eax+0x140]
  78ad25:	f3 0f 58 80 38 01 00 00                         	addss  xmm0,DWORD PTR [eax+0x138]
  78ad2d:	6a 00                                           	push   0x0
  78ad2f:	6a 00                                           	push   0x0
  78ad31:	6a 01                                           	push   0x1
  78ad33:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  78ad37:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  78ad3d:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  78ad41:	6a 00                                           	push   0x0
  78ad43:	83 ec 08                                        	sub    esp,0x8
  78ad46:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78ad4a:	8b cf                                           	mov    ecx,edi
  78ad4c:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  78ad50:	f3 0f 11 46 08                                  	movss  DWORD PTR [esi+0x8],xmm0
  78ad55:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78ad58:	e8 33 f3 4d 00                                  	call   0xc6a090
  78ad5d:	d9 5e 04                                        	fstp   DWORD PTR [esi+0x4]
  78ad60:	5f                                              	pop    edi
  78ad61:	8b c6                                           	mov    eax,esi
  78ad63:	5e                                              	pop    esi
  78ad64:	59                                              	pop    ecx
  78ad65:	c3                                              	ret
  78ad66:	cc                                              	int3
  78ad67:	cc                                              	int3
  78ad68:	cc                                              	int3
  78ad69:	cc                                              	int3
  78ad6a:	cc                                              	int3
  78ad6b:	cc                                              	int3
  78ad6c:	cc                                              	int3
  78ad6d:	cc                                              	int3
  78ad6e:	cc                                              	int3
  78ad6f:	cc                                              	int3
