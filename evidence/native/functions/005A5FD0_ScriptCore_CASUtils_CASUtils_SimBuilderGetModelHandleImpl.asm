# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5fd0 (ScriptCore.CASUtils::CASUtils_SimBuilderGetModelHandleImpl)
Paired Ghidra pseudocode: 005A5FD0_ScriptCore_CASUtils_CASUtils_SimBuilderGetModelHandleImpl.c
Window: [0x005a5fd0, 0x005a6010) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6010
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5fd0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5fe0: 35 75 1e e8 a8 33 1c 00 8b 10 8b c8 8b 82 cc 00
005a5ff0: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 af aa 03
005a6000: 00 33 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5fd0 <.text+0x1a4fd0>:
  5a5fd0:	56                                              	push   esi
  5a5fd1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5fd5:	8b c6                                           	mov    eax,esi
  5a5fd7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a5fdc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5fe1:	75 1e                                           	jne    0x5a6001
  5a5fe3:	e8 a8 33 1c 00                                  	call   0x769390
  5a5fe8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a5fea:	8b c8                                           	mov    ecx,eax
  5a5fec:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5ff2:	56                                              	push   esi
  5a5ff3:	ff d0                                           	call   eax
  5a5ff5:	85 c0                                           	test   eax,eax
  5a5ff7:	74 08                                           	je     0x5a6001
  5a5ff9:	8b c8                                           	mov    ecx,eax
  5a5ffb:	5e                                              	pop    esi
  5a5ffc:	e9 af aa 03 00                                  	jmp    0x5e0ab0
  5a6001:	33 c0                                           	xor    eax,eax
  5a6003:	5e                                              	pop    esi
  5a6004:	c3                                              	ret
  5a6005:	cc                                              	int3
  5a6006:	cc                                              	int3
  5a6007:	cc                                              	int3
  5a6008:	cc                                              	int3
  5a6009:	cc                                              	int3
  5a600a:	cc                                              	int3
  5a600b:	cc                                              	int3
  5a600c:	cc                                              	int3
  5a600d:	cc                                              	int3
  5a600e:	cc                                              	int3
  5a600f:	cc                                              	int3
