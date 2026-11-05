# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787b40 (ScriptCore.World::World_ObjectDesigner_SetNewPatternImpl)
Paired Ghidra pseudocode: 00787B40_ScriptCore_World_World_ObjectDesigner_SetNewPatternImpl.c
Window: [0x00787b40, 0x00787ba0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787ba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787b40: 83 ec 08 56 e8 57 87 3a 00 8b f0 e8 40 18 fe ff
00787b50: 8d 4c 24 04 51 8d 4c 24 0c 51 8b 4c 24 1c c7 44
00787b60: 24 0c 00 00 00 00 c7 44 24 10 00 00 00 00 8b 10
00787b70: 8b 52 70 51 8b c8 ff d2 8b 44 24 04 85 c0 7e 12
00787b80: 8b 4c 24 10 50 8b 44 24 0c 50 51 8b ce e8 ae d3
00787b90: 3a 00 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787b40 <.text+0x386b40>:
  787b40:	83 ec 08                                        	sub    esp,0x8
  787b43:	56                                              	push   esi
  787b44:	e8 57 87 3a 00                                  	call   0xb302a0
  787b49:	8b f0                                           	mov    esi,eax
  787b4b:	e8 40 18 fe ff                                  	call   0x769390
  787b50:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  787b54:	51                                              	push   ecx
  787b55:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  787b59:	51                                              	push   ecx
  787b5a:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  787b5e:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  787b66:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  787b6e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  787b70:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  787b73:	51                                              	push   ecx
  787b74:	8b c8                                           	mov    ecx,eax
  787b76:	ff d2                                           	call   edx
  787b78:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  787b7c:	85 c0                                           	test   eax,eax
  787b7e:	7e 12                                           	jle    0x787b92
  787b80:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  787b84:	50                                              	push   eax
  787b85:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  787b89:	50                                              	push   eax
  787b8a:	51                                              	push   ecx
  787b8b:	8b ce                                           	mov    ecx,esi
  787b8d:	e8 ae d3 3a 00                                  	call   0xb34f40
  787b92:	5e                                              	pop    esi
  787b93:	83 c4 08                                        	add    esp,0x8
  787b96:	c3                                              	ret
  787b97:	cc                                              	int3
  787b98:	cc                                              	int3
  787b99:	cc                                              	int3
  787b9a:	cc                                              	int3
  787b9b:	cc                                              	int3
  787b9c:	cc                                              	int3
  787b9d:	cc                                              	int3
  787b9e:	cc                                              	int3
  787b9f:	cc                                              	int3
