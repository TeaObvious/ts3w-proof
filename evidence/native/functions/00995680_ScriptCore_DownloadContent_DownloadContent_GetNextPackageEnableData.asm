# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995680 (ScriptCore.DownloadContent::DownloadContent_GetNextPackageEnableData)
Paired Ghidra pseudocode: 00995680_ScriptCore_DownloadContent_DownloadContent_GetNextPackageEnableData.c
Window: [0x00995680, 0x009956f0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x009956f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995680: 83 ec 20 53 56 32 db e8 d4 b5 01 00 8b f0 85 f6
00995690: 74 4c 8d 4c 24 08 e8 65 b5 b6 ff 8b 44 24 30 50
009956a0: 8d 4c 24 0c 51 8b ce e8 b4 af 01 00 8a d8 84 db
009956b0: 74 2c 8d 54 24 08 52 8d 44 24 1c 50 e8 5f 69 dd
009956c0: ff 8b 10 8b 4c 24 34 89 11 8b 50 04 89 51 04 8b
009956d0: 50 08 89 51 08 8b 40 0c 83 c4 08 89 41 0c 5e 8a
009956e0: c3 5b 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995680 <.text+0x594680>:
  995680:	83 ec 20                                        	sub    esp,0x20
  995683:	53                                              	push   ebx
  995684:	56                                              	push   esi
  995685:	32 db                                           	xor    bl,bl
  995687:	e8 d4 b5 01 00                                  	call   0x9b0c60
  99568c:	8b f0                                           	mov    esi,eax
  99568e:	85 f6                                           	test   esi,esi
  995690:	74 4c                                           	je     0x9956de
  995692:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  995696:	e8 65 b5 b6 ff                                  	call   0x500c00
  99569b:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  99569f:	50                                              	push   eax
  9956a0:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  9956a4:	51                                              	push   ecx
  9956a5:	8b ce                                           	mov    ecx,esi
  9956a7:	e8 b4 af 01 00                                  	call   0x9b0660
  9956ac:	8a d8                                           	mov    bl,al
  9956ae:	84 db                                           	test   bl,bl
  9956b0:	74 2c                                           	je     0x9956de
  9956b2:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  9956b6:	52                                              	push   edx
  9956b7:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  9956bb:	50                                              	push   eax
  9956bc:	e8 5f 69 dd ff                                  	call   0x76c020
  9956c1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9956c3:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  9956c7:	89 11                                           	mov    DWORD PTR [ecx],edx
  9956c9:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  9956cc:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  9956cf:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9956d2:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  9956d5:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  9956d8:	83 c4 08                                        	add    esp,0x8
  9956db:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  9956de:	5e                                              	pop    esi
  9956df:	8a c3                                           	mov    al,bl
  9956e1:	5b                                              	pop    ebx
  9956e2:	83 c4 20                                        	add    esp,0x20
  9956e5:	c3                                              	ret
  9956e6:	cc                                              	int3
  9956e7:	cc                                              	int3
  9956e8:	cc                                              	int3
  9956e9:	cc                                              	int3
  9956ea:	cc                                              	int3
  9956eb:	cc                                              	int3
  9956ec:	cc                                              	int3
  9956ed:	cc                                              	int3
  9956ee:	cc                                              	int3
  9956ef:	cc                                              	int3
