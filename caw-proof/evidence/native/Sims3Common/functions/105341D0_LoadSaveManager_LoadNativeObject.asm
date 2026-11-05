# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105341d0 (LoadSaveManager_LoadNativeObject)
Paired Ghidra pseudocode: 105341D0_LoadSaveManager_LoadNativeObject.c
Window: [0x105341d0, 0x10534210) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10534210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105341d0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
105341e0: 41 74 05 83 c8 ff 5e c3 e8 33 6f 02 00 8b 10 8b
105341f0: c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e5 8b 4c
10534200: 24 0c 8b 10 8b 52 08 51 8b c8 ff d2 5e c3 cc cc

LINEAR DISASSEMBLY
105341d0 <.text+0x5331d0>:
105341d0:	56                                              	push   esi
105341d1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
105341d5:	8b c6                                           	mov    eax,esi
105341d7:	25 00 00 00 ff                                  	and    eax,0xff000000
105341dc:	3d 00 00 00 41                                  	cmp    eax,0x41000000
105341e1:	74 05                                           	je     0x105341e8
105341e3:	83 c8 ff                                        	or     eax,0xffffffff
105341e6:	5e                                              	pop    esi
105341e7:	c3                                              	ret
105341e8:	e8 33 6f 02 00                                  	call   0x1055b120
105341ed:	8b 10                                           	mov    edx,DWORD PTR [eax]
105341ef:	8b c8                                           	mov    ecx,eax
105341f1:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
105341f7:	56                                              	push   esi
105341f8:	ff d0                                           	call   eax
105341fa:	85 c0                                           	test   eax,eax
105341fc:	74 e5                                           	je     0x105341e3
105341fe:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10534202:	8b 10                                           	mov    edx,DWORD PTR [eax]
10534204:	8b 52 08                                        	mov    edx,DWORD PTR [edx+0x8]
10534207:	51                                              	push   ecx
10534208:	8b c8                                           	mov    ecx,eax
1053420a:	ff d2                                           	call   edx
1053420c:	5e                                              	pop    esi
1053420d:	c3                                              	ret
1053420e:	cc                                              	int3
1053420f:	cc                                              	int3
