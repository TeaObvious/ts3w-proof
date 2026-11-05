# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6010 (ScriptCore.CASUtils::CASUtils_SimBuilderGetTextureSizeImpl)
Paired Ghidra pseudocode: 005A6010_ScriptCore_CASUtils_CASUtils_SimBuilderGetTextureSizeImpl.c
Window: [0x005a6010, 0x005a6050) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6010: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6020: 35 75 1b e8 68 33 1c 00 8b 10 8b c8 8b 82 cc 00
005a6030: 00 00 56 ff d0 85 c0 74 05 8b 40 64 5e c3 33 c0
005a6040: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6010 <.text+0x1a5010>:
  5a6010:	56                                              	push   esi
  5a6011:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6015:	8b c6                                           	mov    eax,esi
  5a6017:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a601c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6021:	75 1b                                           	jne    0x5a603e
  5a6023:	e8 68 33 1c 00                                  	call   0x769390
  5a6028:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a602a:	8b c8                                           	mov    ecx,eax
  5a602c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6032:	56                                              	push   esi
  5a6033:	ff d0                                           	call   eax
  5a6035:	85 c0                                           	test   eax,eax
  5a6037:	74 05                                           	je     0x5a603e
  5a6039:	8b 40 64                                        	mov    eax,DWORD PTR [eax+0x64]
  5a603c:	5e                                              	pop    esi
  5a603d:	c3                                              	ret
  5a603e:	33 c0                                           	xor    eax,eax
  5a6040:	5e                                              	pop    esi
  5a6041:	c3                                              	ret
  5a6042:	cc                                              	int3
  5a6043:	cc                                              	int3
  5a6044:	cc                                              	int3
  5a6045:	cc                                              	int3
  5a6046:	cc                                              	int3
  5a6047:	cc                                              	int3
  5a6048:	cc                                              	int3
  5a6049:	cc                                              	int3
  5a604a:	cc                                              	int3
  5a604b:	cc                                              	int3
  5a604c:	cc                                              	int3
  5a604d:	cc                                              	int3
  5a604e:	cc                                              	int3
  5a604f:	cc                                              	int3
