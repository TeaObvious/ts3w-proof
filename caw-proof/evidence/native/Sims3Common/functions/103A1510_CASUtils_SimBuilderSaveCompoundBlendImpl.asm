# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1510 (CASUtils_SimBuilderSaveCompoundBlendImpl)
Paired Ghidra pseudocode: 103A1510_CASUtils_SimBuilderSaveCompoundBlendImpl.c
Window: [0x103a1510, 0x103a1550) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1510: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 83 ec 10 50
103a1520: 51 52 8d 44 24 0c 50 e8 a4 e5 ff ff 8b 4c 24 24
103a1530: 8b 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c
103a1540: 89 51 08 89 41 0c 8b c1 83 c4 20 c3 cc cc cc cc

LINEAR DISASSEMBLY
103a1510 <.text+0x3a0510>:
103a1510:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
103a1514:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a1518:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
103a151c:	83 ec 10                                        	sub    esp,0x10
103a151f:	50                                              	push   eax
103a1520:	51                                              	push   ecx
103a1521:	52                                              	push   edx
103a1522:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
103a1526:	50                                              	push   eax
103a1527:	e8 a4 e5 ff ff                                  	call   0x1039fad0
103a152c:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
103a1530:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1532:	89 11                                           	mov    DWORD PTR [ecx],edx
103a1534:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1537:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a153a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a153d:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
103a1540:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a1543:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
103a1546:	8b c1                                           	mov    eax,ecx
103a1548:	83 c4 20                                        	add    esp,0x20
103a154b:	c3                                              	ret
103a154c:	cc                                              	int3
103a154d:	cc                                              	int3
103a154e:	cc                                              	int3
103a154f:	cc                                              	int3
