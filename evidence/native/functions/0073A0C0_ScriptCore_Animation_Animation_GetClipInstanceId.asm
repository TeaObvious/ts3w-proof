# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073a0c0 (ScriptCore.Animation::Animation_GetClipInstanceId)
Paired Ghidra pseudocode: 0073A0C0_ScriptCore_Animation_Animation_GetClipInstanceId.c
Window: [0x0073a0c0, 0x0073a110) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073a110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073a0c0: 81 ec 00 01 00 00 e8 c5 f2 02 00 8b 8c 24 04 01
0073a0d0: 00 00 8b 10 8b 52 58 51 8b c8 ff d2 6a ff 50 8d
0073a0e0: 44 24 08 68 00 01 00 00 50 e8 a2 a5 db ff 8d 4c
0073a0f0: 24 10 6a 00 51 e8 c6 06 e4 ff 81 c4 18 01 00 00
0073a100: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073a0c0 <.text+0x3390c0>:
  73a0c0:	81 ec 00 01 00 00                               	sub    esp,0x100
  73a0c6:	e8 c5 f2 02 00                                  	call   0x769390
  73a0cb:	8b 8c 24 04 01 00 00                            	mov    ecx,DWORD PTR [esp+0x104]
  73a0d2:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73a0d4:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  73a0d7:	51                                              	push   ecx
  73a0d8:	8b c8                                           	mov    ecx,eax
  73a0da:	ff d2                                           	call   edx
  73a0dc:	6a ff                                           	push   0xffffffff
  73a0de:	50                                              	push   eax
  73a0df:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  73a0e3:	68 00 01 00 00                                  	push   0x100
  73a0e8:	50                                              	push   eax
  73a0e9:	e8 a2 a5 db ff                                  	call   0x4f4690
  73a0ee:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  73a0f2:	6a 00                                           	push   0x0
  73a0f4:	51                                              	push   ecx
  73a0f5:	e8 c6 06 e4 ff                                  	call   0x57a7c0
  73a0fa:	81 c4 18 01 00 00                               	add    esp,0x118
  73a100:	c3                                              	ret
  73a101:	cc                                              	int3
  73a102:	cc                                              	int3
  73a103:	cc                                              	int3
  73a104:	cc                                              	int3
  73a105:	cc                                              	int3
  73a106:	cc                                              	int3
  73a107:	cc                                              	int3
  73a108:	cc                                              	int3
  73a109:	cc                                              	int3
  73a10a:	cc                                              	int3
  73a10b:	cc                                              	int3
  73a10c:	cc                                              	int3
  73a10d:	cc                                              	int3
  73a10e:	cc                                              	int3
  73a10f:	cc                                              	int3
