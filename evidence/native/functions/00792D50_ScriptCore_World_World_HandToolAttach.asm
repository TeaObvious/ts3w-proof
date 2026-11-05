# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00792d50 (ScriptCore.World::World_HandToolAttach)
Paired Ghidra pseudocode: 00792D50_ScriptCore_World_World_HandToolAttach.c
Window: [0x00792d50, 0x00792db0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00792db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00792d50: 56 e8 4a 66 fd ff 6a 18 8b f0 e8 f1 c3 34 00 83
00792d60: c4 04 85 c0 74 15 c7 00 8c 5f 06 01 33 c9 8d 50
00792d70: 04 87 0a c7 00 8c 5f 06 01 eb 02 33 c0 8b 4c 24
00792d80: 08 8b 54 24 0c 89 48 08 8a 4c 24 10 88 48 10 6a
00792d90: 00 89 50 0c 8b 16 50 8b 42 18 68 e5 d6 5a 04 8b
00792da0: ce ff d0 b0 01 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00792d50 <.text+0x391d50>:
  792d50:	56                                              	push   esi
  792d51:	e8 4a 66 fd ff                                  	call   0x7693a0
  792d56:	6a 18                                           	push   0x18
  792d58:	8b f0                                           	mov    esi,eax
  792d5a:	e8 f1 c3 34 00                                  	call   0xadf150
  792d5f:	83 c4 04                                        	add    esp,0x4
  792d62:	85 c0                                           	test   eax,eax
  792d64:	74 15                                           	je     0x792d7b
  792d66:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  792d6c:	33 c9                                           	xor    ecx,ecx
  792d6e:	8d 50 04                                        	lea    edx,[eax+0x4]
  792d71:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  792d73:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  792d79:	eb 02                                           	jmp    0x792d7d
  792d7b:	33 c0                                           	xor    eax,eax
  792d7d:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  792d81:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  792d85:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  792d88:	8a 4c 24 10                                     	mov    cl,BYTE PTR [esp+0x10]
  792d8c:	88 48 10                                        	mov    BYTE PTR [eax+0x10],cl
  792d8f:	6a 00                                           	push   0x0
  792d91:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  792d94:	8b 16                                           	mov    edx,DWORD PTR [esi]
  792d96:	50                                              	push   eax
  792d97:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  792d9a:	68 e5 d6 5a 04                                  	push   0x45ad6e5
  792d9f:	8b ce                                           	mov    ecx,esi
  792da1:	ff d0                                           	call   eax
  792da3:	b0 01                                           	mov    al,0x1
  792da5:	5e                                              	pop    esi
  792da6:	c3                                              	ret
  792da7:	cc                                              	int3
  792da8:	cc                                              	int3
  792da9:	cc                                              	int3
  792daa:	cc                                              	int3
  792dab:	cc                                              	int3
  792dac:	cc                                              	int3
  792dad:	cc                                              	int3
  792dae:	cc                                              	int3
  792daf:	cc                                              	int3
