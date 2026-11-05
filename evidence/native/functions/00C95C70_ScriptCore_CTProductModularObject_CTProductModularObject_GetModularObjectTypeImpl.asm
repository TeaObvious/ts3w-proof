# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00c95c70 (ScriptCore.CTProductModularObject::CTProductModularObject_GetModularObjectTypeImpl)
Paired Ghidra pseudocode: 00C95C70_ScriptCore_CTProductModularObject_CTProductModularObject_GetModularObjectTypeImpl.c
Window: [0x00c95c70, 0x00c95cb0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00c95cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00c95c70: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00c95c80: 54 75 22 e8 08 37 ad ff 85 c0 74 19 8b 10 8b c8
00c95c90: 8b 82 cc 00 00 00 56 ff d0 85 c0 75 08 66 a1 38
00c95ca0: 00 00 00 5e c3 66 33 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00c95c70 <.text+0x894c70>:
  c95c70:	56                                              	push   esi
  c95c71:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  c95c75:	8b c6                                           	mov    eax,esi
  c95c77:	25 00 00 00 ff                                  	and    eax,0xff000000
  c95c7c:	3d 00 00 00 54                                  	cmp    eax,0x54000000
  c95c81:	75 22                                           	jne    0xc95ca5
  c95c83:	e8 08 37 ad ff                                  	call   0x769390
  c95c88:	85 c0                                           	test   eax,eax
  c95c8a:	74 19                                           	je     0xc95ca5
  c95c8c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  c95c8e:	8b c8                                           	mov    ecx,eax
  c95c90:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  c95c96:	56                                              	push   esi
  c95c97:	ff d0                                           	call   eax
  c95c99:	85 c0                                           	test   eax,eax
  c95c9b:	75 08                                           	jne    0xc95ca5
  c95c9d:	66 a1 38 00 00 00                               	mov    ax,ds:0x38
  c95ca3:	5e                                              	pop    esi
  c95ca4:	c3                                              	ret
  c95ca5:	66 33 c0                                        	xor    ax,ax
  c95ca8:	5e                                              	pop    esi
  c95ca9:	c3                                              	ret
  c95caa:	cc                                              	int3
  c95cab:	cc                                              	int3
  c95cac:	cc                                              	int3
  c95cad:	cc                                              	int3
  c95cae:	cc                                              	int3
  c95caf:	cc                                              	int3
