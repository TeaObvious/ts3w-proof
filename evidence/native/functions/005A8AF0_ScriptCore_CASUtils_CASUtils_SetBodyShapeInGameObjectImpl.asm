# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8af0 (ScriptCore.CASUtils::CASUtils_SetBodyShapeInGameObjectImpl)
Paired Ghidra pseudocode: 005A8AF0_ScriptCore_CASUtils_CASUtils_SetBodyShapeInGameObjectImpl.c
Window: [0x005a8af0, 0x005a8b50) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8af0: e8 7b ea 38 00 8b 4c 24 18 8b 54 24 14 51 52 8b
005a8b00: c8 e8 7a f4 38 00 85 c0 74 3b 8b 0d fc a0 1e 01
005a8b10: 51 8b c8 e8 48 b7 38 00 85 c0 74 29 d9 44 24 10
005a8b20: 83 ec 10 d9 5c 24 0c 8b c8 d9 44 24 1c d9 5c 24
005a8b30: 08 d9 44 24 18 d9 5c 24 04 d9 44 24 14 d9 1c 24
005a8b40: e8 cb 6a 3a 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a8af0 <.text+0x1a7af0>:
  5a8af0:	e8 7b ea 38 00                                  	call   0x937570
  5a8af5:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5a8af9:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5a8afd:	51                                              	push   ecx
  5a8afe:	52                                              	push   edx
  5a8aff:	8b c8                                           	mov    ecx,eax
  5a8b01:	e8 7a f4 38 00                                  	call   0x937f80
  5a8b06:	85 c0                                           	test   eax,eax
  5a8b08:	74 3b                                           	je     0x5a8b45
  5a8b0a:	8b 0d fc a0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea0fc
  5a8b10:	51                                              	push   ecx
  5a8b11:	8b c8                                           	mov    ecx,eax
  5a8b13:	e8 48 b7 38 00                                  	call   0x934260
  5a8b18:	85 c0                                           	test   eax,eax
  5a8b1a:	74 29                                           	je     0x5a8b45
  5a8b1c:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  5a8b20:	83 ec 10                                        	sub    esp,0x10
  5a8b23:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  5a8b27:	8b c8                                           	mov    ecx,eax
  5a8b29:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  5a8b2d:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  5a8b31:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  5a8b35:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5a8b39:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  5a8b3d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5a8b40:	e8 cb 6a 3a 00                                  	call   0x94f610
  5a8b45:	c3                                              	ret
  5a8b46:	cc                                              	int3
  5a8b47:	cc                                              	int3
  5a8b48:	cc                                              	int3
  5a8b49:	cc                                              	int3
  5a8b4a:	cc                                              	int3
  5a8b4b:	cc                                              	int3
  5a8b4c:	cc                                              	int3
  5a8b4d:	cc                                              	int3
  5a8b4e:	cc                                              	int3
  5a8b4f:	cc                                              	int3
