# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00c95c30 (ScriptCore.CTProductModularObject::CTProductModularObject_FreeImpl)
Paired Ghidra pseudocode: 00C95C30_ScriptCore_CTProductModularObject_CTProductModularObject_FreeImpl.c
Window: [0x00c95c30, 0x00c95c70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00c95c70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00c95c30: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00c95c40: 54 75 20 e8 48 37 ad ff 8b 10 8b c8 8b 82 d8 00
00c95c50: 00 00 56 ff d0 85 c0 74 0a 8b 10 8b c8 8b 42 04
00c95c60: 5e ff e0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00c95c30 <.text+0x894c30>:
  c95c30:	56                                              	push   esi
  c95c31:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  c95c35:	8b c6                                           	mov    eax,esi
  c95c37:	25 00 00 00 ff                                  	and    eax,0xff000000
  c95c3c:	3d 00 00 00 54                                  	cmp    eax,0x54000000
  c95c41:	75 20                                           	jne    0xc95c63
  c95c43:	e8 48 37 ad ff                                  	call   0x769390
  c95c48:	8b 10                                           	mov    edx,DWORD PTR [eax]
  c95c4a:	8b c8                                           	mov    ecx,eax
  c95c4c:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  c95c52:	56                                              	push   esi
  c95c53:	ff d0                                           	call   eax
  c95c55:	85 c0                                           	test   eax,eax
  c95c57:	74 0a                                           	je     0xc95c63
  c95c59:	8b 10                                           	mov    edx,DWORD PTR [eax]
  c95c5b:	8b c8                                           	mov    ecx,eax
  c95c5d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  c95c60:	5e                                              	pop    esi
  c95c61:	ff e0                                           	jmp    eax
  c95c63:	5e                                              	pop    esi
  c95c64:	c3                                              	ret
  c95c65:	cc                                              	int3
  c95c66:	cc                                              	int3
  c95c67:	cc                                              	int3
  c95c68:	cc                                              	int3
  c95c69:	cc                                              	int3
  c95c6a:	cc                                              	int3
  c95c6b:	cc                                              	int3
  c95c6c:	cc                                              	int3
  c95c6d:	cc                                              	int3
  c95c6e:	cc                                              	int3
  c95c6f:	cc                                              	int3
