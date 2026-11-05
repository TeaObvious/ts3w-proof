# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00753fa0 (ScriptCore.Route::Route_GetNumPaths)
Paired Ghidra pseudocode: 00753FA0_ScriptCore_Route_Route_GetNumPaths.c
Window: [0x00753fa0, 0x00754000) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00754000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00753fa0: 8b 0d c4 50 1d 01 85 c9 56 74 43 8b 44 24 08 50
00753fb0: e8 fb 74 ff ff 8b f0 85 f6 74 33 8b 16 8b 42 10
00753fc0: 57 8b ce ff d0 8b 86 e0 00 00 00 8d 8e e0 00 00
00753fd0: 00 33 ff 3b c1 74 09 8b 00 83 c7 01 3b c1 75 f7
00753fe0: 8b 16 8b 42 14 8b ce ff d0 8b c7 5f 5e c3 33 c0
00753ff0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00753fa0 <.text+0x352fa0>:
  753fa0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  753fa6:	85 c9                                           	test   ecx,ecx
  753fa8:	56                                              	push   esi
  753fa9:	74 43                                           	je     0x753fee
  753fab:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  753faf:	50                                              	push   eax
  753fb0:	e8 fb 74 ff ff                                  	call   0x74b4b0
  753fb5:	8b f0                                           	mov    esi,eax
  753fb7:	85 f6                                           	test   esi,esi
  753fb9:	74 33                                           	je     0x753fee
  753fbb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753fbd:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  753fc0:	57                                              	push   edi
  753fc1:	8b ce                                           	mov    ecx,esi
  753fc3:	ff d0                                           	call   eax
  753fc5:	8b 86 e0 00 00 00                               	mov    eax,DWORD PTR [esi+0xe0]
  753fcb:	8d 8e e0 00 00 00                               	lea    ecx,[esi+0xe0]
  753fd1:	33 ff                                           	xor    edi,edi
  753fd3:	3b c1                                           	cmp    eax,ecx
  753fd5:	74 09                                           	je     0x753fe0
  753fd7:	8b 00                                           	mov    eax,DWORD PTR [eax]
  753fd9:	83 c7 01                                        	add    edi,0x1
  753fdc:	3b c1                                           	cmp    eax,ecx
  753fde:	75 f7                                           	jne    0x753fd7
  753fe0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753fe2:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  753fe5:	8b ce                                           	mov    ecx,esi
  753fe7:	ff d0                                           	call   eax
  753fe9:	8b c7                                           	mov    eax,edi
  753feb:	5f                                              	pop    edi
  753fec:	5e                                              	pop    esi
  753fed:	c3                                              	ret
  753fee:	33 c0                                           	xor    eax,eax
  753ff0:	5e                                              	pop    esi
  753ff1:	c3                                              	ret
  753ff2:	cc                                              	int3
  753ff3:	cc                                              	int3
  753ff4:	cc                                              	int3
  753ff5:	cc                                              	int3
  753ff6:	cc                                              	int3
  753ff7:	cc                                              	int3
  753ff8:	cc                                              	int3
  753ff9:	cc                                              	int3
  753ffa:	cc                                              	int3
  753ffb:	cc                                              	int3
  753ffc:	cc                                              	int3
  753ffd:	cc                                              	int3
  753ffe:	cc                                              	int3
  753fff:	cc                                              	int3
