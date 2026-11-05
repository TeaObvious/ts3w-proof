# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a68b0 (ScriptCore.CASUtils::CASUtils_SimBuilderSetFacialBlendImpl)
Paired Ghidra pseudocode: 005A68B0_ScriptCore_CASUtils_CASUtils_SimBuilderSetFacialBlendImpl.c
Window: [0x005a68b0, 0x005a6920) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a68b0: 83 ec 10 56 8b 74 24 18 8b c6 25 00 00 00 ff 3d
005a68c0: 00 00 00 35 75 4f e8 c5 2a 1c 00 8b 10 8b c8 8b
005a68d0: 82 cc 00 00 00 56 ff d0 85 c0 74 39 8b 4c 24 24
005a68e0: d9 44 24 2c 8b 54 24 28 89 4c 24 04 8b 4c 24 1c
005a68f0: 51 89 4c 24 10 d9 1c 24 8d 4c 24 08 89 54 24 0c
005a6900: 8b 54 24 24 51 8b c8 89 54 24 18 e8 70 d0 03 00
005a6910: 5e 83 c4 10 c3 32 c0 5e 83 c4 10 c3 cc cc cc cc

LINEAR DISASSEMBLY
005a68b0 <.text+0x1a58b0>:
  5a68b0:	83 ec 10                                        	sub    esp,0x10
  5a68b3:	56                                              	push   esi
  5a68b4:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  5a68b8:	8b c6                                           	mov    eax,esi
  5a68ba:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a68bf:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a68c4:	75 4f                                           	jne    0x5a6915
  5a68c6:	e8 c5 2a 1c 00                                  	call   0x769390
  5a68cb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a68cd:	8b c8                                           	mov    ecx,eax
  5a68cf:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a68d5:	56                                              	push   esi
  5a68d6:	ff d0                                           	call   eax
  5a68d8:	85 c0                                           	test   eax,eax
  5a68da:	74 39                                           	je     0x5a6915
  5a68dc:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a68e0:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  5a68e4:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a68e8:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  5a68ec:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a68f0:	51                                              	push   ecx
  5a68f1:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  5a68f5:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5a68f8:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  5a68fc:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  5a6900:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  5a6904:	51                                              	push   ecx
  5a6905:	8b c8                                           	mov    ecx,eax
  5a6907:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  5a690b:	e8 70 d0 03 00                                  	call   0x5e3980
  5a6910:	5e                                              	pop    esi
  5a6911:	83 c4 10                                        	add    esp,0x10
  5a6914:	c3                                              	ret
  5a6915:	32 c0                                           	xor    al,al
  5a6917:	5e                                              	pop    esi
  5a6918:	83 c4 10                                        	add    esp,0x10
  5a691b:	c3                                              	ret
  5a691c:	cc                                              	int3
  5a691d:	cc                                              	int3
  5a691e:	cc                                              	int3
  5a691f:	cc                                              	int3
