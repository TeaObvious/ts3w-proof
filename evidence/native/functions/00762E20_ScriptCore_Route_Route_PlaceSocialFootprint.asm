# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00762e20 (ScriptCore.Route::Route_PlaceSocialFootprint)
Paired Ghidra pseudocode: 00762E20_ScriptCore_Route_Route_PlaceSocialFootprint.c
Window: [0x00762e20, 0x00762ea0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00762ea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00762e20: 8b 0d c4 50 1d 01 85 c9 53 56 74 61 8b 44 24 0c
00762e30: 50 e8 7a 86 fe ff 8b f0 85 f6 74 51 8b 16 8b 42
00762e40: 10 8b ce ff d0 8b 4c 24 28 8b 54 24 24 8b 44 24
00762e50: 20 51 8b 4c 24 18 52 8b 54 24 20 50 83 ec 0c 8b
00762e60: c4 89 08 8b 4c 24 34 89 50 04 8b 54 24 28 52 6a
00762e70: 00 56 89 48 08 e8 a6 b0 ff ff 8a d8 8b 06 8b 50
00762e80: 14 83 c4 24 8b ce ff d2 8a c3 5e 5b c3 5e 32 c0
00762e90: 5b c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00762e20 <.text+0x361e20>:
  762e20:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  762e26:	85 c9                                           	test   ecx,ecx
  762e28:	53                                              	push   ebx
  762e29:	56                                              	push   esi
  762e2a:	74 61                                           	je     0x762e8d
  762e2c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  762e30:	50                                              	push   eax
  762e31:	e8 7a 86 fe ff                                  	call   0x74b4b0
  762e36:	8b f0                                           	mov    esi,eax
  762e38:	85 f6                                           	test   esi,esi
  762e3a:	74 51                                           	je     0x762e8d
  762e3c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  762e3e:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  762e41:	8b ce                                           	mov    ecx,esi
  762e43:	ff d0                                           	call   eax
  762e45:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  762e49:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  762e4d:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  762e51:	51                                              	push   ecx
  762e52:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  762e56:	52                                              	push   edx
  762e57:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  762e5b:	50                                              	push   eax
  762e5c:	83 ec 0c                                        	sub    esp,0xc
  762e5f:	8b c4                                           	mov    eax,esp
  762e61:	89 08                                           	mov    DWORD PTR [eax],ecx
  762e63:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  762e67:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  762e6a:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  762e6e:	52                                              	push   edx
  762e6f:	6a 00                                           	push   0x0
  762e71:	56                                              	push   esi
  762e72:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  762e75:	e8 a6 b0 ff ff                                  	call   0x75df20
  762e7a:	8a d8                                           	mov    bl,al
  762e7c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  762e7e:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  762e81:	83 c4 24                                        	add    esp,0x24
  762e84:	8b ce                                           	mov    ecx,esi
  762e86:	ff d2                                           	call   edx
  762e88:	8a c3                                           	mov    al,bl
  762e8a:	5e                                              	pop    esi
  762e8b:	5b                                              	pop    ebx
  762e8c:	c3                                              	ret
  762e8d:	5e                                              	pop    esi
  762e8e:	32 c0                                           	xor    al,al
  762e90:	5b                                              	pop    ebx
  762e91:	c3                                              	ret
  762e92:	cc                                              	int3
  762e93:	cc                                              	int3
  762e94:	cc                                              	int3
  762e95:	cc                                              	int3
  762e96:	cc                                              	int3
  762e97:	cc                                              	int3
  762e98:	cc                                              	int3
  762e99:	cc                                              	int3
  762e9a:	cc                                              	int3
  762e9b:	cc                                              	int3
  762e9c:	cc                                              	int3
  762e9d:	cc                                              	int3
  762e9e:	cc                                              	int3
  762e9f:	cc                                              	int3
