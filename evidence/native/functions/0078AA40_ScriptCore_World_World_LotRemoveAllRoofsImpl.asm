# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078aa40 (ScriptCore.World::World_LotRemoveAllRoofsImpl)
Paired Ghidra pseudocode: 0078AA40_ScriptCore_World_World_LotRemoveAllRoofsImpl.c
Window: [0x0078aa40, 0x0078aaa0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078aaa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078aa40: 8b 0d c4 db 1e 01 83 ec 34 85 c9 74 41 8b 44 24
0078aa50: 3c 8b 54 24 38 6a 00 50 52 e8 b2 7d 4d 00 85 c0
0078aa60: 74 2c 50 8d 4c 24 04 e8 94 f0 57 00 6a 00 8d 4c
0078aa70: 24 04 e8 a9 f0 57 00 8d 0c 24 c7 04 24 10 19 01
0078aa80: 01 c7 44 24 08 ac 31 08 01 e8 b2 e8 ff ff 83 c4
0078aa90: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078aa40 <.text+0x389a40>:
  78aa40:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78aa46:	83 ec 34                                        	sub    esp,0x34
  78aa49:	85 c9                                           	test   ecx,ecx
  78aa4b:	74 41                                           	je     0x78aa8e
  78aa4d:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  78aa51:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  78aa55:	6a 00                                           	push   0x0
  78aa57:	50                                              	push   eax
  78aa58:	52                                              	push   edx
  78aa59:	e8 b2 7d 4d 00                                  	call   0xc62810
  78aa5e:	85 c0                                           	test   eax,eax
  78aa60:	74 2c                                           	je     0x78aa8e
  78aa62:	50                                              	push   eax
  78aa63:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  78aa67:	e8 94 f0 57 00                                  	call   0xd09b00
  78aa6c:	6a 00                                           	push   0x0
  78aa6e:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  78aa72:	e8 a9 f0 57 00                                  	call   0xd09b20
  78aa77:	8d 0c 24                                        	lea    ecx,[esp]
  78aa7a:	c7 04 24 10 19 01 01                            	mov    DWORD PTR [esp],0x1011910
  78aa81:	c7 44 24 08 ac 31 08 01                         	mov    DWORD PTR [esp+0x8],0x10831ac
  78aa89:	e8 b2 e8 ff ff                                  	call   0x789340
  78aa8e:	83 c4 34                                        	add    esp,0x34
  78aa91:	c3                                              	ret
  78aa92:	cc                                              	int3
  78aa93:	cc                                              	int3
  78aa94:	cc                                              	int3
  78aa95:	cc                                              	int3
  78aa96:	cc                                              	int3
  78aa97:	cc                                              	int3
  78aa98:	cc                                              	int3
  78aa99:	cc                                              	int3
  78aa9a:	cc                                              	int3
  78aa9b:	cc                                              	int3
  78aa9c:	cc                                              	int3
  78aa9d:	cc                                              	int3
  78aa9e:	cc                                              	int3
  78aa9f:	cc                                              	int3
