# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786490 (ScriptCore.World::World_DesignModeSwap_DisableSubmitOfUndoableImpl)
Paired Ghidra pseudocode: 00786490_ScriptCore_World_World_DesignModeSwap_DisableSubmitOfUndoableImpl.c
Window: [0x00786490, 0x007864d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007864d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786490: e8 fb 2e fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
007864a0: ff 81 fa 00 00 00 45 75 1d 8b 10 51 8b c8 8b 82
007864b0: cc 00 00 00 ff d0 85 c0 74 0c 8b 4c 24 08 51 8b
007864c0: c8 e8 da 7c 2d 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786490 <.text+0x385490>:
  786490:	e8 fb 2e fe ff                                  	call   0x769390
  786495:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  786499:	8b d1                                           	mov    edx,ecx
  78649b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  7864a1:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  7864a7:	75 1d                                           	jne    0x7864c6
  7864a9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7864ab:	51                                              	push   ecx
  7864ac:	8b c8                                           	mov    ecx,eax
  7864ae:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7864b4:	ff d0                                           	call   eax
  7864b6:	85 c0                                           	test   eax,eax
  7864b8:	74 0c                                           	je     0x7864c6
  7864ba:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7864be:	51                                              	push   ecx
  7864bf:	8b c8                                           	mov    ecx,eax
  7864c1:	e8 da 7c 2d 00                                  	call   0xa5e1a0
  7864c6:	c3                                              	ret
  7864c7:	cc                                              	int3
  7864c8:	cc                                              	int3
  7864c9:	cc                                              	int3
  7864ca:	cc                                              	int3
  7864cb:	cc                                              	int3
  7864cc:	cc                                              	int3
  7864cd:	cc                                              	int3
  7864ce:	cc                                              	int3
  7864cf:	cc                                              	int3
