# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098de70 (SacsWrap_StopAnimationNode_Create)
Paired Ghidra pseudocode: 1098DE70_SacsWrap_StopAnimationNode_Create.c
Window: [0x1098de70, 0x1098def0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098def0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098de70: 56 6a 00 6a 00 6a 00 6a 00 68 ac 70 b9 10 68 80
1098de80: 00 00 00 e8 28 b0 f8 ff 8b f0 83 c4 18 85 f6 74
1098de90: 59 8b ce e8 68 18 c6 ff 0f 57 c0 b8 10 27 00 00
1098dea0: b9 01 00 00 00 f3 0f 11 46 64 f3 0f 11 46 68 f3
1098deb0: 0f 11 46 6c f3 0f 11 46 70 f3 0f 10 05 d4 b0 ac
1098dec0: 10 89 46 58 89 46 5c 89 4e 50 c7 46 54 ff ff ff
1098ded0: ff 89 4e 60 f3 0f 11 46 74 c7 46 78 00 00 00 00
1098dee0: c7 06 60 fd b2 10 8b c6 5e c3 33 c0 5e c3 cc cc

LINEAR DISASSEMBLY
1098de70 <.text+0x98ce70>:
1098de70:	56                                              	push   esi
1098de71:	6a 00                                           	push   0x0
1098de73:	6a 00                                           	push   0x0
1098de75:	6a 00                                           	push   0x0
1098de77:	6a 00                                           	push   0x0
1098de79:	68 ac 70 b9 10                                  	push   0x10b970ac
1098de7e:	68 80 00 00 00                                  	push   0x80
1098de83:	e8 28 b0 f8 ff                                  	call   0x10918eb0
1098de88:	8b f0                                           	mov    esi,eax
1098de8a:	83 c4 18                                        	add    esp,0x18
1098de8d:	85 f6                                           	test   esi,esi
1098de8f:	74 59                                           	je     0x1098deea
1098de91:	8b ce                                           	mov    ecx,esi
1098de93:	e8 68 18 c6 ff                                  	call   0x105ef700
1098de98:	0f 57 c0                                        	xorps  xmm0,xmm0
1098de9b:	b8 10 27 00 00                                  	mov    eax,0x2710
1098dea0:	b9 01 00 00 00                                  	mov    ecx,0x1
1098dea5:	f3 0f 11 46 64                                  	movss  DWORD PTR [esi+0x64],xmm0
1098deaa:	f3 0f 11 46 68                                  	movss  DWORD PTR [esi+0x68],xmm0
1098deaf:	f3 0f 11 46 6c                                  	movss  DWORD PTR [esi+0x6c],xmm0
1098deb4:	f3 0f 11 46 70                                  	movss  DWORD PTR [esi+0x70],xmm0
1098deb9:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1098dec1:	89 46 58                                        	mov    DWORD PTR [esi+0x58],eax
1098dec4:	89 46 5c                                        	mov    DWORD PTR [esi+0x5c],eax
1098dec7:	89 4e 50                                        	mov    DWORD PTR [esi+0x50],ecx
1098deca:	c7 46 54 ff ff ff ff                            	mov    DWORD PTR [esi+0x54],0xffffffff
1098ded1:	89 4e 60                                        	mov    DWORD PTR [esi+0x60],ecx
1098ded4:	f3 0f 11 46 74                                  	movss  DWORD PTR [esi+0x74],xmm0
1098ded9:	c7 46 78 00 00 00 00                            	mov    DWORD PTR [esi+0x78],0x0
1098dee0:	c7 06 60 fd b2 10                               	mov    DWORD PTR [esi],0x10b2fd60
1098dee6:	8b c6                                           	mov    eax,esi
1098dee8:	5e                                              	pop    esi
1098dee9:	c3                                              	ret
1098deea:	33 c0                                           	xor    eax,eax
1098deec:	5e                                              	pop    esi
1098deed:	c3                                              	ret
1098deee:	cc                                              	int3
1098deef:	cc                                              	int3
