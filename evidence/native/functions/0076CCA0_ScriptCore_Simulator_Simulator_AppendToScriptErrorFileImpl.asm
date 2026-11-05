# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076cca0 (ScriptCore.Simulator::Simulator_AppendToScriptErrorFileImpl)
Paired Ghidra pseudocode: 0076CCA0_ScriptCore_Simulator_Simulator_AppendToScriptErrorFileImpl.c
Window: [0x0076cca0, 0x0076cce0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076cce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076cca0: 56 57 8b 7c 24 10 85 ff 74 2d e8 e1 c6 ff ff 8b
0076ccb0: 4c 24 0c 8b f0 8b 06 8b 90 cc 00 00 00 51 8b ce
0076ccc0: ff d2 85 c0 74 11 8b 16 57 50 8b 82 50 01 00 00
0076ccd0: 8b ce ff d0 5f 5e c3 5f 32 c0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
0076cca0 <.text+0x36bca0>:
  76cca0:	56                                              	push   esi
  76cca1:	57                                              	push   edi
  76cca2:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  76cca6:	85 ff                                           	test   edi,edi
  76cca8:	74 2d                                           	je     0x76ccd7
  76ccaa:	e8 e1 c6 ff ff                                  	call   0x769390
  76ccaf:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76ccb3:	8b f0                                           	mov    esi,eax
  76ccb5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76ccb7:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
  76ccbd:	51                                              	push   ecx
  76ccbe:	8b ce                                           	mov    ecx,esi
  76ccc0:	ff d2                                           	call   edx
  76ccc2:	85 c0                                           	test   eax,eax
  76ccc4:	74 11                                           	je     0x76ccd7
  76ccc6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76ccc8:	57                                              	push   edi
  76ccc9:	50                                              	push   eax
  76ccca:	8b 82 50 01 00 00                               	mov    eax,DWORD PTR [edx+0x150]
  76ccd0:	8b ce                                           	mov    ecx,esi
  76ccd2:	ff d0                                           	call   eax
  76ccd4:	5f                                              	pop    edi
  76ccd5:	5e                                              	pop    esi
  76ccd6:	c3                                              	ret
  76ccd7:	5f                                              	pop    edi
  76ccd8:	32 c0                                           	xor    al,al
  76ccda:	5e                                              	pop    esi
  76ccdb:	c3                                              	ret
  76ccdc:	cc                                              	int3
  76ccdd:	cc                                              	int3
  76ccde:	cc                                              	int3
  76ccdf:	cc                                              	int3
