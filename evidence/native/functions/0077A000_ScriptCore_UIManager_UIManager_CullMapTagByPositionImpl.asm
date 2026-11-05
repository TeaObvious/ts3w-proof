# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077a000 (ScriptCore.UIManager::UIManager_CullMapTagByPositionImpl)
Paired Ghidra pseudocode: 0077A000_ScriptCore_UIManager_UIManager_CullMapTagByPositionImpl.c
Window: [0x0077a000, 0x0077a030) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077a030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077a000: e8 5b ff 06 00 85 c0 74 21 8b 4c 24 04 83 ec 0c
0077a010: 8b d4 89 0a 8b 4c 24 14 89 4a 04 8b 4c 24 18 89
0077a020: 4a 08 8b c8 e8 e7 fe 06 00 c3 32 c0 c3 cc cc cc

LINEAR DISASSEMBLY
0077a000 <.text+0x379000>:
  77a000:	e8 5b ff 06 00                                  	call   0x7e9f60
  77a005:	85 c0                                           	test   eax,eax
  77a007:	74 21                                           	je     0x77a02a
  77a009:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77a00d:	83 ec 0c                                        	sub    esp,0xc
  77a010:	8b d4                                           	mov    edx,esp
  77a012:	89 0a                                           	mov    DWORD PTR [edx],ecx
  77a014:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77a018:	89 4a 04                                        	mov    DWORD PTR [edx+0x4],ecx
  77a01b:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  77a01f:	89 4a 08                                        	mov    DWORD PTR [edx+0x8],ecx
  77a022:	8b c8                                           	mov    ecx,eax
  77a024:	e8 e7 fe 06 00                                  	call   0x7e9f10
  77a029:	c3                                              	ret
  77a02a:	32 c0                                           	xor    al,al
  77a02c:	c3                                              	ret
  77a02d:	cc                                              	int3
  77a02e:	cc                                              	int3
  77a02f:	cc                                              	int3
