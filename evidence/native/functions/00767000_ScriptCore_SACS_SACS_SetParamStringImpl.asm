# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00767000 (ScriptCore.SACS::SACS_SetParamStringImpl)
Paired Ghidra pseudocode: 00767000_ScriptCore_SACS_SACS_SetParamStringImpl.c
Window: [0x00767000, 0x00767040) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00767000: 56 57 e8 89 23 00 00 8b 4c 24 0c 8b f0 8b 06 8b
00767010: 90 cc 00 00 00 51 8b ce ff d2 8b f8 85 ff 74 1b
00767020: 8b 4c 24 14 8b 06 8b 50 58 51 8b ce ff d2 50 8b
00767030: 44 24 14 50 8b cf e8 25 ab 09 00 5f 5e c3 cc cc

LINEAR DISASSEMBLY
00767000 <.text+0x366000>:
  767000:	56                                              	push   esi
  767001:	57                                              	push   edi
  767002:	e8 89 23 00 00                                  	call   0x769390
  767007:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76700b:	8b f0                                           	mov    esi,eax
  76700d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76700f:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
  767015:	51                                              	push   ecx
  767016:	8b ce                                           	mov    ecx,esi
  767018:	ff d2                                           	call   edx
  76701a:	8b f8                                           	mov    edi,eax
  76701c:	85 ff                                           	test   edi,edi
  76701e:	74 1b                                           	je     0x76703b
  767020:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  767024:	8b 06                                           	mov    eax,DWORD PTR [esi]
  767026:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  767029:	51                                              	push   ecx
  76702a:	8b ce                                           	mov    ecx,esi
  76702c:	ff d2                                           	call   edx
  76702e:	50                                              	push   eax
  76702f:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  767033:	50                                              	push   eax
  767034:	8b cf                                           	mov    ecx,edi
  767036:	e8 25 ab 09 00                                  	call   0x801b60
  76703b:	5f                                              	pop    edi
  76703c:	5e                                              	pop    esi
  76703d:	c3                                              	ret
  76703e:	cc                                              	int3
  76703f:	cc                                              	int3
