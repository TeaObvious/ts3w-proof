# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109869f0 (Manifest_ParseFromRecord)
Paired Ghidra pseudocode: 109869F0_Manifest_ParseFromRecord.c
Window: [0x109869f0, 0x10986a50) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986a50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109869f0: 83 ec 08 8b 44 24 10 89 44 24 10 e8 d0 e6 f5 ff
10986a00: 85 c0 74 2f 56 8b 35 78 80 cb 10 8d 4c 24 14 51
10986a10: 8d 54 24 08 52 8b ce e8 f4 19 d2 ff 8b 4e 08 8b
10986a20: 56 04 8b 44 24 04 3b 04 8a 5e 74 07 8b 40 04 85
10986a30: c0 75 06 32 c0 83 c4 08 c3 8b 4c 24 0c 6a 00 50
10986a40: e8 4b 51 e2 ff 83 c4 08 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109869f0 <.text+0x9859f0>:
109869f0:	83 ec 08                                        	sub    esp,0x8
109869f3:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
109869f7:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
109869fb:	e8 d0 e6 f5 ff                                  	call   0x108e50d0
10986a00:	85 c0                                           	test   eax,eax
10986a02:	74 2f                                           	je     0x10986a33
10986a04:	56                                              	push   esi
10986a05:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
10986a0b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10986a0f:	51                                              	push   ecx
10986a10:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10986a14:	52                                              	push   edx
10986a15:	8b ce                                           	mov    ecx,esi
10986a17:	e8 f4 19 d2 ff                                  	call   0x106a8410
10986a1c:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
10986a1f:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
10986a22:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10986a26:	3b 04 8a                                        	cmp    eax,DWORD PTR [edx+ecx*4]
10986a29:	5e                                              	pop    esi
10986a2a:	74 07                                           	je     0x10986a33
10986a2c:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
10986a2f:	85 c0                                           	test   eax,eax
10986a31:	75 06                                           	jne    0x10986a39
10986a33:	32 c0                                           	xor    al,al
10986a35:	83 c4 08                                        	add    esp,0x8
10986a38:	c3                                              	ret
10986a39:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10986a3d:	6a 00                                           	push   0x0
10986a3f:	50                                              	push   eax
10986a40:	e8 4b 51 e2 ff                                  	call   0x107abb90
10986a45:	83 c4 08                                        	add    esp,0x8
10986a48:	c3                                              	ret
10986a49:	cc                                              	int3
10986a4a:	cc                                              	int3
10986a4b:	cc                                              	int3
10986a4c:	cc                                              	int3
10986a4d:	cc                                              	int3
10986a4e:	cc                                              	int3
10986a4f:	cc                                              	int3
