# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786370 (ScriptCore.World::World_DesignModeSwap_SetSubsortImpl)
Paired Ghidra pseudocode: 00786370_ScriptCore_World_World_DesignModeSwap_SetSubsortImpl.c
Window: [0x00786370, 0x007863b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007863b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786370: e8 1b 30 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
00786380: ff 81 fa 00 00 00 45 75 1d 8b 10 51 8b c8 8b 82
00786390: cc 00 00 00 ff d0 85 c0 74 0c 8b 4c 24 08 51 8b
007863a0: c8 e8 ea 81 2d 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786370 <.text+0x385370>:
  786370:	e8 1b 30 fe ff                                  	call   0x769390
  786375:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  786379:	8b d1                                           	mov    edx,ecx
  78637b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  786381:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  786387:	75 1d                                           	jne    0x7863a6
  786389:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78638b:	51                                              	push   ecx
  78638c:	8b c8                                           	mov    ecx,eax
  78638e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  786394:	ff d0                                           	call   eax
  786396:	85 c0                                           	test   eax,eax
  786398:	74 0c                                           	je     0x7863a6
  78639a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78639e:	51                                              	push   ecx
  78639f:	8b c8                                           	mov    ecx,eax
  7863a1:	e8 ea 81 2d 00                                  	call   0xa5e590
  7863a6:	c3                                              	ret
  7863a7:	cc                                              	int3
  7863a8:	cc                                              	int3
  7863a9:	cc                                              	int3
  7863aa:	cc                                              	int3
  7863ab:	cc                                              	int3
  7863ac:	cc                                              	int3
  7863ad:	cc                                              	int3
  7863ae:	cc                                              	int3
  7863af:	cc                                              	int3
