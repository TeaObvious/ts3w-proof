# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5960 (ScriptCore.CASUtils::CASUtils_PartSearchCompleteImpl)
Paired Ghidra pseudocode: 005A5960_ScriptCore_CASUtils_CASUtils_PartSearchCompleteImpl.c
Window: [0x005a5960, 0x005a5990) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5960: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5970: 35 75 12 e8 18 3a 1c 00 8b 10 8b c8 8b 82 cc 00
005a5980: 00 00 56 ff d0 b0 01 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5960 <.text+0x1a4960>:
  5a5960:	56                                              	push   esi
  5a5961:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5965:	8b c6                                           	mov    eax,esi
  5a5967:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a596c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5971:	75 12                                           	jne    0x5a5985
  5a5973:	e8 18 3a 1c 00                                  	call   0x769390
  5a5978:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a597a:	8b c8                                           	mov    ecx,eax
  5a597c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5982:	56                                              	push   esi
  5a5983:	ff d0                                           	call   eax
  5a5985:	b0 01                                           	mov    al,0x1
  5a5987:	5e                                              	pop    esi
  5a5988:	c3                                              	ret
  5a5989:	cc                                              	int3
  5a598a:	cc                                              	int3
  5a598b:	cc                                              	int3
  5a598c:	cc                                              	int3
  5a598d:	cc                                              	int3
  5a598e:	cc                                              	int3
  5a598f:	cc                                              	int3
