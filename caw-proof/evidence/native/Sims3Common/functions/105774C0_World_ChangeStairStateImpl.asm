# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105774c0 (World_ChangeStairStateImpl)
Paired Ghidra pseudocode: 105774C0_World_ChangeStairStateImpl.c
Window: [0x105774c0, 0x10577510) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105774c0: 8b 0d c4 00 c7 10 85 c9 74 3f 8b 44 24 08 8b 54
105774d0: 24 04 6a 00 50 52 e8 35 fb cb ff 85 c0 74 2a 56
105774e0: 8b b0 b4 02 00 00 85 f6 74 1e 8b 44 24 14 8b 4c
105774f0: 24 10 50 51 8b ce e8 f5 78 b6 ff 8b 54 24 18 50
10577500: 52 8b ce e8 c8 e6 b6 ff 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
105774c0 <.text+0x5764c0>:
105774c0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105774c6:	85 c9                                           	test   ecx,ecx
105774c8:	74 3f                                           	je     0x10577509
105774ca:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105774ce:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105774d2:	6a 00                                           	push   0x0
105774d4:	50                                              	push   eax
105774d5:	52                                              	push   edx
105774d6:	e8 35 fb cb ff                                  	call   0x10237010
105774db:	85 c0                                           	test   eax,eax
105774dd:	74 2a                                           	je     0x10577509
105774df:	56                                              	push   esi
105774e0:	8b b0 b4 02 00 00                               	mov    esi,DWORD PTR [eax+0x2b4]
105774e6:	85 f6                                           	test   esi,esi
105774e8:	74 1e                                           	je     0x10577508
105774ea:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
105774ee:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
105774f2:	50                                              	push   eax
105774f3:	51                                              	push   ecx
105774f4:	8b ce                                           	mov    ecx,esi
105774f6:	e8 f5 78 b6 ff                                  	call   0x100dedf0
105774fb:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
105774ff:	50                                              	push   eax
10577500:	52                                              	push   edx
10577501:	8b ce                                           	mov    ecx,esi
10577503:	e8 c8 e6 b6 ff                                  	call   0x100e5bd0
10577508:	5e                                              	pop    esi
10577509:	c3                                              	ret
1057750a:	cc                                              	int3
1057750b:	cc                                              	int3
1057750c:	cc                                              	int3
1057750d:	cc                                              	int3
1057750e:	cc                                              	int3
1057750f:	cc                                              	int3
