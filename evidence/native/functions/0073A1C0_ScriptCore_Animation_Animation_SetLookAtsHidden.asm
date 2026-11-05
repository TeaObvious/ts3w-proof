# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073a1c0 (ScriptCore.Animation::Animation_SetLookAtsHidden)
Paired Ghidra pseudocode: 0073A1C0_ScriptCore_Animation_Animation_SetLookAtsHidden.c
Window: [0x0073a1c0, 0x0073a210) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073a210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073a1c0: e8 ab d3 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
0073a1d0: c8 e8 aa dd 1f 00 85 c0 74 28 8b 0d 84 d4 1d 01
0073a1e0: 51 8b c8 e8 78 a0 1f 00 85 c0 74 16 80 7c 24 0c
0073a1f0: 00 74 08 81 48 2c 00 20 00 00 c3 81 60 2c ff df
0073a200: ff ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073a1c0 <.text+0x3391c0>:
  73a1c0:	e8 ab d3 1f 00                                  	call   0x937570
  73a1c5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  73a1c9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  73a1cd:	51                                              	push   ecx
  73a1ce:	52                                              	push   edx
  73a1cf:	8b c8                                           	mov    ecx,eax
  73a1d1:	e8 aa dd 1f 00                                  	call   0x937f80
  73a1d6:	85 c0                                           	test   eax,eax
  73a1d8:	74 28                                           	je     0x73a202
  73a1da:	8b 0d 84 d4 1d 01                               	mov    ecx,DWORD PTR ds:0x11dd484
  73a1e0:	51                                              	push   ecx
  73a1e1:	8b c8                                           	mov    ecx,eax
  73a1e3:	e8 78 a0 1f 00                                  	call   0x934260
  73a1e8:	85 c0                                           	test   eax,eax
  73a1ea:	74 16                                           	je     0x73a202
  73a1ec:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
  73a1f1:	74 08                                           	je     0x73a1fb
  73a1f3:	81 48 2c 00 20 00 00                            	or     DWORD PTR [eax+0x2c],0x2000
  73a1fa:	c3                                              	ret
  73a1fb:	81 60 2c ff df ff ff                            	and    DWORD PTR [eax+0x2c],0xffffdfff
  73a202:	c3                                              	ret
  73a203:	cc                                              	int3
  73a204:	cc                                              	int3
  73a205:	cc                                              	int3
  73a206:	cc                                              	int3
  73a207:	cc                                              	int3
  73a208:	cc                                              	int3
  73a209:	cc                                              	int3
  73a20a:	cc                                              	int3
  73a20b:	cc                                              	int3
  73a20c:	cc                                              	int3
  73a20d:	cc                                              	int3
  73a20e:	cc                                              	int3
  73a20f:	cc                                              	int3
