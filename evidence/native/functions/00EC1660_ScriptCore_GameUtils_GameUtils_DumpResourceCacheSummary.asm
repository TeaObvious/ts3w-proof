# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1660 (ScriptCore.GameUtils::GameUtils_DumpResourceCacheSummary)
Paired Ghidra pseudocode: 00EC1660_ScriptCore_GameUtils_GameUtils_DumpResourceCacheSummary.c
Window: [0x00ec1660, 0x00ec1680) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1660: e8 db da 86 ff 85 c0 74 09 8b 10 8b c8 8b 42 48
00ec1670: ff e0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1660 <.text+0xac0660>:
  ec1660:	e8 db da 86 ff                                  	call   0x72f140
  ec1665:	85 c0                                           	test   eax,eax
  ec1667:	74 09                                           	je     0xec1672
  ec1669:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec166b:	8b c8                                           	mov    ecx,eax
  ec166d:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  ec1670:	ff e0                                           	jmp    eax
  ec1672:	c3                                              	ret
  ec1673:	cc                                              	int3
  ec1674:	cc                                              	int3
  ec1675:	cc                                              	int3
  ec1676:	cc                                              	int3
  ec1677:	cc                                              	int3
  ec1678:	cc                                              	int3
  ec1679:	cc                                              	int3
  ec167a:	cc                                              	int3
  ec167b:	cc                                              	int3
  ec167c:	cc                                              	int3
  ec167d:	cc                                              	int3
  ec167e:	cc                                              	int3
  ec167f:	cc                                              	int3
