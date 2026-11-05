# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009955a0 (ScriptCore.DownloadContent::DownloadContent_GetNextPackageId)
Paired Ghidra pseudocode: 009955A0_ScriptCore_DownloadContent_DownloadContent_GetNextPackageId.c
Window: [0x009955a0, 0x00995610) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009955a0: 83 ec 20 53 56 32 db e8 b4 b6 01 00 8b f0 85 f6
009955b0: 74 47 8d 4c 24 08 e8 45 b6 b6 ff 8d 44 24 08 50
009955c0: 8b ce e8 29 b0 01 00 8a d8 84 db 74 2c 8d 4c 24
009955d0: 08 51 8d 54 24 1c 52 e8 44 6a dd ff 8b 10 8b 4c
009955e0: 24 34 89 11 8b 50 04 89 51 04 8b 50 08 89 51 08
009955f0: 8b 40 0c 83 c4 08 89 41 0c 5e 8a c3 5b 83 c4 20
00995600: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
009955a0 <.text+0x5945a0>:
  9955a0:	83 ec 20                                        	sub    esp,0x20
  9955a3:	53                                              	push   ebx
  9955a4:	56                                              	push   esi
  9955a5:	32 db                                           	xor    bl,bl
  9955a7:	e8 b4 b6 01 00                                  	call   0x9b0c60
  9955ac:	8b f0                                           	mov    esi,eax
  9955ae:	85 f6                                           	test   esi,esi
  9955b0:	74 47                                           	je     0x9955f9
  9955b2:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  9955b6:	e8 45 b6 b6 ff                                  	call   0x500c00
  9955bb:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  9955bf:	50                                              	push   eax
  9955c0:	8b ce                                           	mov    ecx,esi
  9955c2:	e8 29 b0 01 00                                  	call   0x9b05f0
  9955c7:	8a d8                                           	mov    bl,al
  9955c9:	84 db                                           	test   bl,bl
  9955cb:	74 2c                                           	je     0x9955f9
  9955cd:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  9955d1:	51                                              	push   ecx
  9955d2:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  9955d6:	52                                              	push   edx
  9955d7:	e8 44 6a dd ff                                  	call   0x76c020
  9955dc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9955de:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  9955e2:	89 11                                           	mov    DWORD PTR [ecx],edx
  9955e4:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  9955e7:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  9955ea:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9955ed:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  9955f0:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  9955f3:	83 c4 08                                        	add    esp,0x8
  9955f6:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  9955f9:	5e                                              	pop    esi
  9955fa:	8a c3                                           	mov    al,bl
  9955fc:	5b                                              	pop    ebx
  9955fd:	83 c4 20                                        	add    esp,0x20
  995600:	c3                                              	ret
  995601:	cc                                              	int3
  995602:	cc                                              	int3
  995603:	cc                                              	int3
  995604:	cc                                              	int3
  995605:	cc                                              	int3
  995606:	cc                                              	int3
  995607:	cc                                              	int3
  995608:	cc                                              	int3
  995609:	cc                                              	int3
  99560a:	cc                                              	int3
  99560b:	cc                                              	int3
  99560c:	cc                                              	int3
  99560d:	cc                                              	int3
  99560e:	cc                                              	int3
  99560f:	cc                                              	int3
