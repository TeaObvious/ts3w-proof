# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786b30 (ScriptCore.World::World_LotSetHighlightColorImpl)
Paired Ghidra pseudocode: 00786B30_ScriptCore_World_World_LotSetHighlightColorImpl.c
Window: [0x00786b30, 0x00786b80) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786b30: 8b 0d c4 db 1e 01 85 c9 74 36 8b 44 24 08 8b 54
00786b40: 24 04 6a 00 50 52 e8 c5 bc 4d 00 85 c0 74 21 d9
00786b50: 44 24 14 83 ec 0c d9 5c 24 08 8b c8 d9 44 24 1c
00786b60: d9 5c 24 04 d9 44 24 18 d9 1c 24 e8 f0 e7 32 00
00786b70: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786b30 <.text+0x385b30>:
  786b30:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786b36:	85 c9                                           	test   ecx,ecx
  786b38:	74 36                                           	je     0x786b70
  786b3a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  786b3e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  786b42:	6a 00                                           	push   0x0
  786b44:	50                                              	push   eax
  786b45:	52                                              	push   edx
  786b46:	e8 c5 bc 4d 00                                  	call   0xc62810
  786b4b:	85 c0                                           	test   eax,eax
  786b4d:	74 21                                           	je     0x786b70
  786b4f:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  786b53:	83 ec 0c                                        	sub    esp,0xc
  786b56:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  786b5a:	8b c8                                           	mov    ecx,eax
  786b5c:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  786b60:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  786b64:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  786b68:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  786b6b:	e8 f0 e7 32 00                                  	call   0xab5360
  786b70:	c3                                              	ret
  786b71:	cc                                              	int3
  786b72:	cc                                              	int3
  786b73:	cc                                              	int3
  786b74:	cc                                              	int3
  786b75:	cc                                              	int3
  786b76:	cc                                              	int3
  786b77:	cc                                              	int3
  786b78:	cc                                              	int3
  786b79:	cc                                              	int3
  786b7a:	cc                                              	int3
  786b7b:	cc                                              	int3
  786b7c:	cc                                              	int3
  786b7d:	cc                                              	int3
  786b7e:	cc                                              	int3
  786b7f:	cc                                              	int3
