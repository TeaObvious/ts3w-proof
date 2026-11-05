# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a78d0 (ScriptCore.CASUtils::CASUtils_GetRigKeyImpl)
Paired Ghidra pseudocode: 005A78D0_ScriptCore_CASUtils_CASUtils_GetRigKeyImpl.c
Window: [0x005a78d0, 0x005a7920) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a78d0: 83 ec 10 8b 4c 24 18 33 c0 89 04 24 89 44 24 04
005a78e0: 89 44 24 08 89 44 24 0c 8d 04 24 50 51 e8 ce 41
005a78f0: 04 00 8b c8 e8 d7 54 04 00 8b 44 24 14 8b 54 24
005a7900: 08 8b 4c 24 0c 89 10 8b 14 24 89 48 04 8b 4c 24
005a7910: 04 89 50 08 89 48 0c 83 c4 10 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005a78d0 <.text+0x1a68d0>:
  5a78d0:	83 ec 10                                        	sub    esp,0x10
  5a78d3:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5a78d7:	33 c0                                           	xor    eax,eax
  5a78d9:	89 04 24                                        	mov    DWORD PTR [esp],eax
  5a78dc:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  5a78e0:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  5a78e4:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  5a78e8:	8d 04 24                                        	lea    eax,[esp]
  5a78eb:	50                                              	push   eax
  5a78ec:	51                                              	push   ecx
  5a78ed:	e8 ce 41 04 00                                  	call   0x5ebac0
  5a78f2:	8b c8                                           	mov    ecx,eax
  5a78f4:	e8 d7 54 04 00                                  	call   0x5ecdd0
  5a78f9:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  5a78fd:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  5a7901:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a7905:	89 10                                           	mov    DWORD PTR [eax],edx
  5a7907:	8b 14 24                                        	mov    edx,DWORD PTR [esp]
  5a790a:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  5a790d:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  5a7911:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  5a7914:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  5a7917:	83 c4 10                                        	add    esp,0x10
  5a791a:	c3                                              	ret
  5a791b:	cc                                              	int3
  5a791c:	cc                                              	int3
  5a791d:	cc                                              	int3
  5a791e:	cc                                              	int3
  5a791f:	cc                                              	int3
