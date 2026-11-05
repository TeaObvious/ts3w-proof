# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786450 (ScriptCore.World::World_DesignModeSwap_ApplyToObjectImpl)
Paired Ghidra pseudocode: 00786450_ScriptCore_World_World_DesignModeSwap_ApplyToObjectImpl.c
Window: [0x00786450, 0x00786490) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786450: e8 3b 2f fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
00786460: ff 81 fa 00 00 00 45 75 18 8b 10 51 8b c8 8b 82
00786470: cc 00 00 00 ff d0 85 c0 74 07 8b c8 e9 8f 90 2d
00786480: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786450 <.text+0x385450>:
  786450:	e8 3b 2f fe ff                                  	call   0x769390
  786455:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  786459:	8b d1                                           	mov    edx,ecx
  78645b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  786461:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  786467:	75 18                                           	jne    0x786481
  786469:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78646b:	51                                              	push   ecx
  78646c:	8b c8                                           	mov    ecx,eax
  78646e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  786474:	ff d0                                           	call   eax
  786476:	85 c0                                           	test   eax,eax
  786478:	74 07                                           	je     0x786481
  78647a:	8b c8                                           	mov    ecx,eax
  78647c:	e9 8f 90 2d 00                                  	jmp    0xa5f510
  786481:	c3                                              	ret
  786482:	cc                                              	int3
  786483:	cc                                              	int3
  786484:	cc                                              	int3
  786485:	cc                                              	int3
  786486:	cc                                              	int3
  786487:	cc                                              	int3
  786488:	cc                                              	int3
  786489:	cc                                              	int3
  78648a:	cc                                              	int3
  78648b:	cc                                              	int3
  78648c:	cc                                              	int3
  78648d:	cc                                              	int3
  78648e:	cc                                              	int3
  78648f:	cc                                              	int3
