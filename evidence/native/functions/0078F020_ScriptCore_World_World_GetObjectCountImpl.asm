# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078f020 (ScriptCore.World::World_GetObjectCountImpl)
Paired Ghidra pseudocode: 0078F020_ScriptCore_World_World_GetObjectCountImpl.c
Window: [0x0078f020, 0x0078f0d0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078f0d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078f020: 8b 0d c4 db 1e 01 83 ec 14 85 c9 0f 84 8c 00 00
0078f030: 00 8b 44 24 1c 8b 54 24 18 6a 00 50 52 e8 ce 37
0078f040: 4d 00 85 c0 74 77 8a 4c 24 20 8a 54 24 24 56 6a
0078f050: 05 6a 00 6a 0f 6a 01 88 4c 24 14 8a 4c 24 3c 6a
0078f060: 00 88 54 24 19 6a 00 88 4c 24 1e 8d 54 24 20 52
0078f070: 8d 4c 24 20 51 8b c8 c7 44 24 28 00 00 00 00 c7
0078f080: 44 24 2c 00 00 00 00 c7 44 24 30 00 00 00 00 c7
0078f090: 44 24 34 24 1a 01 01 e8 e4 83 33 00 8b 44 24 08
0078f0a0: 8b 74 24 0c 2b f0 c1 fe 02 85 c0 74 09 50 e8 2d
0078f0b0: 54 d5 ff 83 c4 04 8b c6 5e 83 c4 14 c3 33 c0 83
0078f0c0: c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078f020 <.text+0x38e020>:
  78f020:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78f026:	83 ec 14                                        	sub    esp,0x14
  78f029:	85 c9                                           	test   ecx,ecx
  78f02b:	0f 84 8c 00 00 00                               	je     0x78f0bd
  78f031:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  78f035:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  78f039:	6a 00                                           	push   0x0
  78f03b:	50                                              	push   eax
  78f03c:	52                                              	push   edx
  78f03d:	e8 ce 37 4d 00                                  	call   0xc62810
  78f042:	85 c0                                           	test   eax,eax
  78f044:	74 77                                           	je     0x78f0bd
  78f046:	8a 4c 24 20                                     	mov    cl,BYTE PTR [esp+0x20]
  78f04a:	8a 54 24 24                                     	mov    dl,BYTE PTR [esp+0x24]
  78f04e:	56                                              	push   esi
  78f04f:	6a 05                                           	push   0x5
  78f051:	6a 00                                           	push   0x0
  78f053:	6a 0f                                           	push   0xf
  78f055:	6a 01                                           	push   0x1
  78f057:	88 4c 24 14                                     	mov    BYTE PTR [esp+0x14],cl
  78f05b:	8a 4c 24 3c                                     	mov    cl,BYTE PTR [esp+0x3c]
  78f05f:	6a 00                                           	push   0x0
  78f061:	88 54 24 19                                     	mov    BYTE PTR [esp+0x19],dl
  78f065:	6a 00                                           	push   0x0
  78f067:	88 4c 24 1e                                     	mov    BYTE PTR [esp+0x1e],cl
  78f06b:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  78f06f:	52                                              	push   edx
  78f070:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  78f074:	51                                              	push   ecx
  78f075:	8b c8                                           	mov    ecx,eax
  78f077:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
  78f07f:	c7 44 24 2c 00 00 00 00                         	mov    DWORD PTR [esp+0x2c],0x0
  78f087:	c7 44 24 30 00 00 00 00                         	mov    DWORD PTR [esp+0x30],0x0
  78f08f:	c7 44 24 34 24 1a 01 01                         	mov    DWORD PTR [esp+0x34],0x1011a24
  78f097:	e8 e4 83 33 00                                  	call   0xac7480
  78f09c:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78f0a0:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  78f0a4:	2b f0                                           	sub    esi,eax
  78f0a6:	c1 fe 02                                        	sar    esi,0x2
  78f0a9:	85 c0                                           	test   eax,eax
  78f0ab:	74 09                                           	je     0x78f0b6
  78f0ad:	50                                              	push   eax
  78f0ae:	e8 2d 54 d5 ff                                  	call   0x4e44e0
  78f0b3:	83 c4 04                                        	add    esp,0x4
  78f0b6:	8b c6                                           	mov    eax,esi
  78f0b8:	5e                                              	pop    esi
  78f0b9:	83 c4 14                                        	add    esp,0x14
  78f0bc:	c3                                              	ret
  78f0bd:	33 c0                                           	xor    eax,eax
  78f0bf:	83 c4 14                                        	add    esp,0x14
  78f0c2:	c3                                              	ret
  78f0c3:	cc                                              	int3
  78f0c4:	cc                                              	int3
  78f0c5:	cc                                              	int3
  78f0c6:	cc                                              	int3
  78f0c7:	cc                                              	int3
  78f0c8:	cc                                              	int3
  78f0c9:	cc                                              	int3
  78f0ca:	cc                                              	int3
  78f0cb:	cc                                              	int3
  78f0cc:	cc                                              	int3
  78f0cd:	cc                                              	int3
  78f0ce:	cc                                              	int3
  78f0cf:	cc                                              	int3
