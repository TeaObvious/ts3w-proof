# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a72d0 (CASUtils_InjectEyebrowColorImpl)
Paired Ghidra pseudocode: 103A72D0_CASUtils_InjectEyebrowColorImpl.c
Window: [0x103a72d0, 0x103a7300) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a7300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a72d0: 8b 44 24 54 8b 4c 24 50 8b 54 24 04 56 57 50 51
103a72e0: 83 ec 48 8b fc b9 12 00 00 00 8d 74 24 60 52 f3
103a72f0: a5 e8 8a fb ff ff 83 c4 54 5f 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
103a72d0 <.text+0x3a62d0>:
103a72d0:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
103a72d4:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
103a72d8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
103a72dc:	56                                              	push   esi
103a72dd:	57                                              	push   edi
103a72de:	50                                              	push   eax
103a72df:	51                                              	push   ecx
103a72e0:	83 ec 48                                        	sub    esp,0x48
103a72e3:	8b fc                                           	mov    edi,esp
103a72e5:	b9 12 00 00 00                                  	mov    ecx,0x12
103a72ea:	8d 74 24 60                                     	lea    esi,[esp+0x60]
103a72ee:	52                                              	push   edx
103a72ef:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
103a72f1:	e8 8a fb ff ff                                  	call   0x103a6e80
103a72f6:	83 c4 54                                        	add    esp,0x54
103a72f9:	5f                                              	pop    edi
103a72fa:	5e                                              	pop    esi
103a72fb:	c3                                              	ret
103a72fc:	cc                                              	int3
103a72fd:	cc                                              	int3
103a72fe:	cc                                              	int3
103a72ff:	cc                                              	int3
