# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744f20 (ScriptCore.Objects::Objects_GetDisplayPosition)
Paired Ghidra pseudocode: 00744F20_ScriptCore_Objects_Objects_GetDisplayPosition.c
Window: [0x00744f20, 0x00744fa0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744fa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744f20: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 41 26 1f 00 8b
00744f30: 4d 10 8b 55 0c 51 52 8b c8 e8 42 30 1f 00 85 c0
00744f40: 74 32 8b 0d 58 a1 1e 01 51 8b c8 e8 10 f3 1e 00
00744f50: 85 c0 74 20 8d 54 24 10 52 8b c8 e8 10 31 21 00
00744f60: 8b 75 08 50 56 e8 e6 71 02 00 83 c4 08 8b c6 5e
00744f70: 8b e5 5d c3 d9 ee 8b 75 08 83 ec 0c d9 54 24 08
00744f80: d9 54 24 04 8b ce d9 1c 24 e8 e2 6f 02 00 8b c6
00744f90: 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00744f20 <.text+0x343f20>:
  744f20:	55                                              	push   ebp
  744f21:	8b ec                                           	mov    ebp,esp
  744f23:	83 e4 f0                                        	and    esp,0xfffffff0
  744f26:	83 ec 1c                                        	sub    esp,0x1c
  744f29:	56                                              	push   esi
  744f2a:	e8 41 26 1f 00                                  	call   0x937570
  744f2f:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  744f32:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  744f35:	51                                              	push   ecx
  744f36:	52                                              	push   edx
  744f37:	8b c8                                           	mov    ecx,eax
  744f39:	e8 42 30 1f 00                                  	call   0x937f80
  744f3e:	85 c0                                           	test   eax,eax
  744f40:	74 32                                           	je     0x744f74
  744f42:	8b 0d 58 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea158
  744f48:	51                                              	push   ecx
  744f49:	8b c8                                           	mov    ecx,eax
  744f4b:	e8 10 f3 1e 00                                  	call   0x934260
  744f50:	85 c0                                           	test   eax,eax
  744f52:	74 20                                           	je     0x744f74
  744f54:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  744f58:	52                                              	push   edx
  744f59:	8b c8                                           	mov    ecx,eax
  744f5b:	e8 10 31 21 00                                  	call   0x958070
  744f60:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  744f63:	50                                              	push   eax
  744f64:	56                                              	push   esi
  744f65:	e8 e6 71 02 00                                  	call   0x76c150
  744f6a:	83 c4 08                                        	add    esp,0x8
  744f6d:	8b c6                                           	mov    eax,esi
  744f6f:	5e                                              	pop    esi
  744f70:	8b e5                                           	mov    esp,ebp
  744f72:	5d                                              	pop    ebp
  744f73:	c3                                              	ret
  744f74:	d9 ee                                           	fldz
  744f76:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  744f79:	83 ec 0c                                        	sub    esp,0xc
  744f7c:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  744f80:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  744f84:	8b ce                                           	mov    ecx,esi
  744f86:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  744f89:	e8 e2 6f 02 00                                  	call   0x76bf70
  744f8e:	8b c6                                           	mov    eax,esi
  744f90:	5e                                              	pop    esi
  744f91:	8b e5                                           	mov    esp,ebp
  744f93:	5d                                              	pop    ebp
  744f94:	c3                                              	ret
  744f95:	cc                                              	int3
  744f96:	cc                                              	int3
  744f97:	cc                                              	int3
  744f98:	cc                                              	int3
  744f99:	cc                                              	int3
  744f9a:	cc                                              	int3
  744f9b:	cc                                              	int3
  744f9c:	cc                                              	int3
  744f9d:	cc                                              	int3
  744f9e:	cc                                              	int3
  744f9f:	cc                                              	int3
