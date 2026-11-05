# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f4c0 (CASUtilsWrap_GetPresetForPart)
Paired Ghidra pseudocode: 1097F4C0_CASUtilsWrap_GetPresetForPart.c
Window: [0x1097f4c0, 0x1097f560) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f4c0: 8b 4c 24 04 83 ec 10 85 c9 56 57 75 08 33 c0 5f
1097f4d0: 5e 83 c4 10 c3 8b 44 24 28 8b 54 24 2c 89 44 24
1097f4e0: 08 8b 44 24 20 89 44 24 10 89 54 24 0c 8b 54 24
1097f4f0: 24 8d 44 24 08 50 89 54 24 18 e8 a1 d5 a5 ff 85
1097f500: c0 74 1c 8b 08 8b 50 04 2b d1 f7 c2 fe ff ff ff
1097f510: 74 0d 51 ff 15 c4 b6 aa 10 5f 5e 83 c4 10 c3 8b
1097f520: 4c 24 14 8b 7c 24 10 8b 54 24 08 8b 74 24 0c 6a
1097f530: 00 83 ec 10 8b c4 89 38 81 e1 00 00 00 ff 89 48
1097f540: 04 89 50 08 89 70 0c e8 64 fe ff ff 83 c4 14 5f
1097f550: 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f4c0 <.text+0x97e4c0>:
1097f4c0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f4c4:	83 ec 10                                        	sub    esp,0x10
1097f4c7:	85 c9                                           	test   ecx,ecx
1097f4c9:	56                                              	push   esi
1097f4ca:	57                                              	push   edi
1097f4cb:	75 08                                           	jne    0x1097f4d5
1097f4cd:	33 c0                                           	xor    eax,eax
1097f4cf:	5f                                              	pop    edi
1097f4d0:	5e                                              	pop    esi
1097f4d1:	83 c4 10                                        	add    esp,0x10
1097f4d4:	c3                                              	ret
1097f4d5:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1097f4d9:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
1097f4dd:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
1097f4e1:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1097f4e5:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1097f4e9:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1097f4ed:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1097f4f1:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1097f4f5:	50                                              	push   eax
1097f4f6:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
1097f4fa:	e8 a1 d5 a5 ff                                  	call   0x103dcaa0
1097f4ff:	85 c0                                           	test   eax,eax
1097f501:	74 1c                                           	je     0x1097f51f
1097f503:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1097f505:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1097f508:	2b d1                                           	sub    edx,ecx
1097f50a:	f7 c2 fe ff ff ff                               	test   edx,0xfffffffe
1097f510:	74 0d                                           	je     0x1097f51f
1097f512:	51                                              	push   ecx
1097f513:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1097f519:	5f                                              	pop    edi
1097f51a:	5e                                              	pop    esi
1097f51b:	83 c4 10                                        	add    esp,0x10
1097f51e:	c3                                              	ret
1097f51f:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097f523:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1097f527:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1097f52b:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1097f52f:	6a 00                                           	push   0x0
1097f531:	83 ec 10                                        	sub    esp,0x10
1097f534:	8b c4                                           	mov    eax,esp
1097f536:	89 38                                           	mov    DWORD PTR [eax],edi
1097f538:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
1097f53e:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1097f541:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1097f544:	89 70 0c                                        	mov    DWORD PTR [eax+0xc],esi
1097f547:	e8 64 fe ff ff                                  	call   0x1097f3b0
1097f54c:	83 c4 14                                        	add    esp,0x14
1097f54f:	5f                                              	pop    edi
1097f550:	5e                                              	pop    esi
1097f551:	83 c4 10                                        	add    esp,0x10
1097f554:	c3                                              	ret
1097f555:	cc                                              	int3
1097f556:	cc                                              	int3
1097f557:	cc                                              	int3
1097f558:	cc                                              	int3
1097f559:	cc                                              	int3
1097f55a:	cc                                              	int3
1097f55b:	cc                                              	int3
1097f55c:	cc                                              	int3
1097f55d:	cc                                              	int3
1097f55e:	cc                                              	int3
1097f55f:	cc                                              	int3
