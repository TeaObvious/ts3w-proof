# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x101d9860 (CAW_SeaSetLevelAndPropagate)
Paired Ghidra pseudocode: 101D9860_CAW_SeaSetLevelAndPropagate.c
Window: [0x101d9860, 0x101d98d0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x101d98d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
101d9860: f3 0f 10 44 24 04 56 57 8b f9 f3 0f 11 47 14 e8
101d9870: 2c 4b 30 00 8b f0 85 f6 74 15 d9 47 14 51 8b ce
101d9880: d9 1c 24 e8 68 54 30 00 c6 86 a3 02 00 00 01 f3
101d9890: 0f 10 44 24 0c f3 0f 11 05 c0 3e c3 10 8b b7 c8
101d98a0: 02 00 00 8b bf cc 02 00 00 3b f7 74 1d 53 8b 5c
101d98b0: 24 14 d9 44 24 10 53 51 8b 0e d9 1c 24 e8 be 26
101d98c0: 00 00 83 c6 04 3b f7 75 e9 5b 5f 5e c2 08 00 cc

LINEAR DISASSEMBLY
101d9860 <.text+0x1d8860>:
101d9860:	f3 0f 10 44 24 04                               	movss  xmm0,DWORD PTR [esp+0x4]
101d9866:	56                                              	push   esi
101d9867:	57                                              	push   edi
101d9868:	8b f9                                           	mov    edi,ecx
101d986a:	f3 0f 11 47 14                                  	movss  DWORD PTR [edi+0x14],xmm0
101d986f:	e8 2c 4b 30 00                                  	call   0x104de3a0
101d9874:	8b f0                                           	mov    esi,eax
101d9876:	85 f6                                           	test   esi,esi
101d9878:	74 15                                           	je     0x101d988f
101d987a:	d9 47 14                                        	fld    DWORD PTR [edi+0x14]
101d987d:	51                                              	push   ecx
101d987e:	8b ce                                           	mov    ecx,esi
101d9880:	d9 1c 24                                        	fstp   DWORD PTR [esp]
101d9883:	e8 68 54 30 00                                  	call   0x104decf0
101d9888:	c6 86 a3 02 00 00 01                            	mov    BYTE PTR [esi+0x2a3],0x1
101d988f:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
101d9895:	f3 0f 11 05 c0 3e c3 10                         	movss  DWORD PTR ds:0x10c33ec0,xmm0
101d989d:	8b b7 c8 02 00 00                               	mov    esi,DWORD PTR [edi+0x2c8]
101d98a3:	8b bf cc 02 00 00                               	mov    edi,DWORD PTR [edi+0x2cc]
101d98a9:	3b f7                                           	cmp    esi,edi
101d98ab:	74 1d                                           	je     0x101d98ca
101d98ad:	53                                              	push   ebx
101d98ae:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
101d98b2:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
101d98b6:	53                                              	push   ebx
101d98b7:	51                                              	push   ecx
101d98b8:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
101d98ba:	d9 1c 24                                        	fstp   DWORD PTR [esp]
101d98bd:	e8 be 26 00 00                                  	call   0x101dbf80
101d98c2:	83 c6 04                                        	add    esi,0x4
101d98c5:	3b f7                                           	cmp    esi,edi
101d98c7:	75 e9                                           	jne    0x101d98b2
101d98c9:	5b                                              	pop    ebx
101d98ca:	5f                                              	pop    edi
101d98cb:	5e                                              	pop    esi
101d98cc:	c2 08 00                                        	ret    0x8
101d98cf:	cc                                              	int3
