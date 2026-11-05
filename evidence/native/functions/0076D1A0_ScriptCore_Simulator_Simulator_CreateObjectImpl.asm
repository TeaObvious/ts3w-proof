# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; independent bounded pristine PE wrapper window.
Annotated entry: 0x0076d1a0 (ScriptCore.Simulator::Simulator_CreateObjectImpl)
Paired actual Ghidra pseudocode: 0076D1A0_ScriptCore_Simulator_Simulator_CreateObjectImpl.c
Stored Ghidra body: one address byte at 0x0076d1a0; ZERO actual Listing instructions.
Bounded PE window [0x0076d1a0,0x0076d1d4); 52 original bytes, ending after observed RET.
The bounded PE decoding below is separate from actual saved Listing.
No body, instruction, type, prototype, flow or analysis repair was performed.

ACTUAL SAVED GHIDRA LISTING RESULT
Disassembly of function: ScriptCore.Simulator::Simulator_CreateObjectImpl
Entry Point: 0076d1a0


Total instructions: 0

ORIGINAL BOUNDED PE BYTES (16 per line)
0076d1a0: e8 eb c1 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
0076d1b0: d0 8b 4c 24 14 8b 10 8b 52 04 51 8b 4c 24 14 51
0076d1c0: 8b 4c 24 14 51 8b 4c 24 14 51 8b 4c 24 14 51 8b
0076d1d0: c8 ff d2 c3

SEPARATE BOUNDED PRISTINE PE LINEAR DECODING
0076d1a0 <original>:
  0076d1a0:	e8 eb c1 ff ff                                 	call   0x769390
  0076d1a5:	8b 10                                          	mov    edx,DWORD PTR [eax]
  0076d1a7:	8b c8                                          	mov    ecx,eax
  0076d1a9:	8b 82 7c 01 00 00                              	mov    eax,DWORD PTR [edx+0x17c]
  0076d1af:	ff d0                                          	call   eax
  0076d1b1:	8b 4c 24 14                                    	mov    ecx,DWORD PTR [esp+0x14]
  0076d1b5:	8b 10                                          	mov    edx,DWORD PTR [eax]
  0076d1b7:	8b 52 04                                       	mov    edx,DWORD PTR [edx+0x4]
  0076d1ba:	51                                             	push   ecx
  0076d1bb:	8b 4c 24 14                                    	mov    ecx,DWORD PTR [esp+0x14]
  0076d1bf:	51                                             	push   ecx
  0076d1c0:	8b 4c 24 14                                    	mov    ecx,DWORD PTR [esp+0x14]
  0076d1c4:	51                                             	push   ecx
  0076d1c5:	8b 4c 24 14                                    	mov    ecx,DWORD PTR [esp+0x14]
  0076d1c9:	51                                             	push   ecx
  0076d1ca:	8b 4c 24 14                                    	mov    ecx,DWORD PTR [esp+0x14]
  0076d1ce:	51                                             	push   ecx
  0076d1cf:	8b c8                                          	mov    ecx,eax
  0076d1d1:	ff d2                                          	call   edx
  0076d1d3:	c3                                             	ret
