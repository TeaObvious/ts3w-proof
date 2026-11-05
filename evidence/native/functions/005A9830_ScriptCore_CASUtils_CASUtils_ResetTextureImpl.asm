# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a9830 (ScriptCore.CASUtils::CASUtils_ResetTextureImpl)
Paired Ghidra pseudocode: 005A9830_ScriptCore_CASUtils_CASUtils_ResetTextureImpl.c
Window: [0x005a9830, 0x005a98e0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a98e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a9830: 83 ec 10 53 57 e8 36 dd 38 00 8b f8 33 db 3b fb
005a9840: 0f 84 8a 00 00 00 8b 44 24 20 8b 4c 24 1c 56 50
005a9850: 51 8b cf e8 28 e7 38 00 8b f0 3b f3 74 71 8b 15
005a9860: c4 9f 1e 01 52 8b ce e8 f4 a9 38 00 3b c3 74 5f
005a9870: 8b c8 89 5c 24 0c 89 5c 24 10 89 5c 24 14 89 5c
005a9880: 24 18 e8 69 bd f9 ff 38 5c 24 28 8b 08 89 4c 24
005a9890: 0c 8b 50 04 89 54 24 10 8b 48 08 89 4c 24 14 8b
005a98a0: 50 0c 89 54 24 18 75 15 8d 44 24 0c 50 56 e8 6d
005a98b0: fe ff ff 83 c4 08 5e 5f 5b 83 c4 10 c3 8d 4c 24
005a98c0: 0c 51 53 68 20 97 5a 00 8b cf e8 41 e7 38 00 5e
005a98d0: 5f 5b 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a9830 <.text+0x1a8830>:
  5a9830:	83 ec 10                                        	sub    esp,0x10
  5a9833:	53                                              	push   ebx
  5a9834:	57                                              	push   edi
  5a9835:	e8 36 dd 38 00                                  	call   0x937570
  5a983a:	8b f8                                           	mov    edi,eax
  5a983c:	33 db                                           	xor    ebx,ebx
  5a983e:	3b fb                                           	cmp    edi,ebx
  5a9840:	0f 84 8a 00 00 00                               	je     0x5a98d0
  5a9846:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  5a984a:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a984e:	56                                              	push   esi
  5a984f:	50                                              	push   eax
  5a9850:	51                                              	push   ecx
  5a9851:	8b cf                                           	mov    ecx,edi
  5a9853:	e8 28 e7 38 00                                  	call   0x937f80
  5a9858:	8b f0                                           	mov    esi,eax
  5a985a:	3b f3                                           	cmp    esi,ebx
  5a985c:	74 71                                           	je     0x5a98cf
  5a985e:	8b 15 c4 9f 1e 01                               	mov    edx,DWORD PTR ds:0x11e9fc4
  5a9864:	52                                              	push   edx
  5a9865:	8b ce                                           	mov    ecx,esi
  5a9867:	e8 f4 a9 38 00                                  	call   0x934260
  5a986c:	3b c3                                           	cmp    eax,ebx
  5a986e:	74 5f                                           	je     0x5a98cf
  5a9870:	8b c8                                           	mov    ecx,eax
  5a9872:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
  5a9876:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
  5a987a:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  5a987e:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  5a9882:	e8 69 bd f9 ff                                  	call   0x5455f0
  5a9887:	38 5c 24 28                                     	cmp    BYTE PTR [esp+0x28],bl
  5a988b:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  5a988d:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  5a9891:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a9894:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  5a9898:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  5a989b:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  5a989f:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a98a2:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  5a98a6:	75 15                                           	jne    0x5a98bd
  5a98a8:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  5a98ac:	50                                              	push   eax
  5a98ad:	56                                              	push   esi
  5a98ae:	e8 6d fe ff ff                                  	call   0x5a9720
  5a98b3:	83 c4 08                                        	add    esp,0x8
  5a98b6:	5e                                              	pop    esi
  5a98b7:	5f                                              	pop    edi
  5a98b8:	5b                                              	pop    ebx
  5a98b9:	83 c4 10                                        	add    esp,0x10
  5a98bc:	c3                                              	ret
  5a98bd:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5a98c1:	51                                              	push   ecx
  5a98c2:	53                                              	push   ebx
  5a98c3:	68 20 97 5a 00                                  	push   0x5a9720
  5a98c8:	8b cf                                           	mov    ecx,edi
  5a98ca:	e8 41 e7 38 00                                  	call   0x938010
  5a98cf:	5e                                              	pop    esi
  5a98d0:	5f                                              	pop    edi
  5a98d1:	5b                                              	pop    ebx
  5a98d2:	83 c4 10                                        	add    esp,0x10
  5a98d5:	c3                                              	ret
  5a98d6:	cc                                              	int3
  5a98d7:	cc                                              	int3
  5a98d8:	cc                                              	int3
  5a98d9:	cc                                              	int3
  5a98da:	cc                                              	int3
  5a98db:	cc                                              	int3
  5a98dc:	cc                                              	int3
  5a98dd:	cc                                              	int3
  5a98de:	cc                                              	int3
  5a98df:	cc                                              	int3
