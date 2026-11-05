# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076cce0 (ScriptCore.Simulator::Simulator_CloseScriptErrorFileImpl)
Paired Ghidra pseudocode: 0076CCE0_ScriptCore_Simulator_Simulator_CloseScriptErrorFileImpl.c
Window: [0x0076cce0, 0x0076cd30) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076cd30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076cce0: 53 56 57 e8 a8 c6 ff ff 8b 5c 24 10 8b f8 8b 07
0076ccf0: 8b 90 cc 00 00 00 53 8b cf ff d2 8b f0 85 f6 74
0076cd00: 26 8b 06 8b 50 18 8b ce ff d2 8b 06 8b 10 6a 01
0076cd10: 8b ce ff d2 8b 07 8b 90 d8 00 00 00 53 8b cf ff
0076cd20: d2 5f 5e b0 01 5b c3 5f 5e 32 c0 5b c3 cc cc cc

LINEAR DISASSEMBLY
0076cce0 <.text+0x36bce0>:
  76cce0:	53                                              	push   ebx
  76cce1:	56                                              	push   esi
  76cce2:	57                                              	push   edi
  76cce3:	e8 a8 c6 ff ff                                  	call   0x769390
  76cce8:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  76ccec:	8b f8                                           	mov    edi,eax
  76ccee:	8b 07                                           	mov    eax,DWORD PTR [edi]
  76ccf0:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
  76ccf6:	53                                              	push   ebx
  76ccf7:	8b cf                                           	mov    ecx,edi
  76ccf9:	ff d2                                           	call   edx
  76ccfb:	8b f0                                           	mov    esi,eax
  76ccfd:	85 f6                                           	test   esi,esi
  76ccff:	74 26                                           	je     0x76cd27
  76cd01:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76cd03:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  76cd06:	8b ce                                           	mov    ecx,esi
  76cd08:	ff d2                                           	call   edx
  76cd0a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76cd0c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cd0e:	6a 01                                           	push   0x1
  76cd10:	8b ce                                           	mov    ecx,esi
  76cd12:	ff d2                                           	call   edx
  76cd14:	8b 07                                           	mov    eax,DWORD PTR [edi]
  76cd16:	8b 90 d8 00 00 00                               	mov    edx,DWORD PTR [eax+0xd8]
  76cd1c:	53                                              	push   ebx
  76cd1d:	8b cf                                           	mov    ecx,edi
  76cd1f:	ff d2                                           	call   edx
  76cd21:	5f                                              	pop    edi
  76cd22:	5e                                              	pop    esi
  76cd23:	b0 01                                           	mov    al,0x1
  76cd25:	5b                                              	pop    ebx
  76cd26:	c3                                              	ret
  76cd27:	5f                                              	pop    edi
  76cd28:	5e                                              	pop    esi
  76cd29:	32 c0                                           	xor    al,al
  76cd2b:	5b                                              	pop    ebx
  76cd2c:	c3                                              	ret
  76cd2d:	cc                                              	int3
  76cd2e:	cc                                              	int3
  76cd2f:	cc                                              	int3
