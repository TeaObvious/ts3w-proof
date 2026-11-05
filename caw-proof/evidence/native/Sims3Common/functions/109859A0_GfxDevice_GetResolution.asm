# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109859a0 (GfxDevice_GetResolution)
Paired Ghidra pseudocode: 109859A0_GfxDevice_GetResolution.c
Window: [0x109859a0, 0x109859f0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x109859f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109859a0: 51 56 8b 74 24 0c 57 8b 7c 24 14 c7 06 00 00 00
109859b0: 00 c7 07 00 00 00 00 8b 0d e8 35 c7 10 85 c9 74
109859c0: 20 8d 44 24 08 50 8d 54 24 18 52 8d 44 24 18 50
109859d0: e8 cb 3e a8 ff 8b 4c 24 10 8b 54 24 14 89 0e 89
109859e0: 17 5f 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109859a0 <.text+0x9849a0>:
109859a0:	51                                              	push   ecx
109859a1:	56                                              	push   esi
109859a2:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
109859a6:	57                                              	push   edi
109859a7:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
109859ab:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
109859b1:	c7 07 00 00 00 00                               	mov    DWORD PTR [edi],0x0
109859b7:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
109859bd:	85 c9                                           	test   ecx,ecx
109859bf:	74 20                                           	je     0x109859e1
109859c1:	8d 44 24 08                                     	lea    eax,[esp+0x8]
109859c5:	50                                              	push   eax
109859c6:	8d 54 24 18                                     	lea    edx,[esp+0x18]
109859ca:	52                                              	push   edx
109859cb:	8d 44 24 18                                     	lea    eax,[esp+0x18]
109859cf:	50                                              	push   eax
109859d0:	e8 cb 3e a8 ff                                  	call   0x104098a0
109859d5:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
109859d9:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
109859dd:	89 0e                                           	mov    DWORD PTR [esi],ecx
109859df:	89 17                                           	mov    DWORD PTR [edi],edx
109859e1:	5f                                              	pop    edi
109859e2:	5e                                              	pop    esi
109859e3:	59                                              	pop    ecx
109859e4:	c3                                              	ret
109859e5:	cc                                              	int3
109859e6:	cc                                              	int3
109859e7:	cc                                              	int3
109859e8:	cc                                              	int3
109859e9:	cc                                              	int3
109859ea:	cc                                              	int3
109859eb:	cc                                              	int3
109859ec:	cc                                              	int3
109859ed:	cc                                              	int3
109859ee:	cc                                              	int3
109859ef:	cc                                              	int3
