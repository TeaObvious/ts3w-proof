# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7bc0 (ScriptCore.CASUtils::CASUtils_SimBuilderSaveUserOutfitImpl)
Paired Ghidra pseudocode: 005A7BC0_ScriptCore_CASUtils_CASUtils_SimBuilderSaveUserOutfitImpl.c
Window: [0x005a7bc0, 0x005a7c00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7bc0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 83 ec 10 50
005a7bd0: 51 52 8d 44 24 0c 50 e8 74 e7 ff ff 8b 4c 24 24
005a7be0: 8b 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c
005a7bf0: 89 51 08 89 41 0c 8b c1 83 c4 20 c3 cc cc cc cc

LINEAR DISASSEMBLY
005a7bc0 <.text+0x1a6bc0>:
  5a7bc0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  5a7bc4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a7bc8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  5a7bcc:	83 ec 10                                        	sub    esp,0x10
  5a7bcf:	50                                              	push   eax
  5a7bd0:	51                                              	push   ecx
  5a7bd1:	52                                              	push   edx
  5a7bd2:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  5a7bd6:	50                                              	push   eax
  5a7bd7:	e8 74 e7 ff ff                                  	call   0x5a6350
  5a7bdc:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a7be0:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a7be2:	89 11                                           	mov    DWORD PTR [ecx],edx
  5a7be4:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a7be7:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  5a7bea:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5a7bed:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  5a7bf0:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  5a7bf3:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  5a7bf6:	8b c1                                           	mov    eax,ecx
  5a7bf8:	83 c4 20                                        	add    esp,0x20
  5a7bfb:	c3                                              	ret
  5a7bfc:	cc                                              	int3
  5a7bfd:	cc                                              	int3
  5a7bfe:	cc                                              	int3
  5a7bff:	cc                                              	int3
