# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; independent bounded pristine PE wrapper window.
Annotated entry: 0x0076cdc0 (ScriptCore.Simulator::Simulator_IsInitDoneImpl)
Paired actual Ghidra pseudocode: 0076CDC0_ScriptCore_Simulator_Simulator_IsInitDoneImpl.c
Stored Ghidra body: one address byte at 0x0076cdc0; ZERO actual Listing instructions.
Bounded PE window [0x0076cdc0,0x0076cde5); 37 original bytes, ending after observed RET.
The bounded PE decoding below is separate from actual saved Listing.
No body, instruction, type, prototype, flow or analysis repair was performed.

ACTUAL SAVED GHIDRA LISTING RESULT
Disassembly of function: ScriptCore.Simulator::Simulator_IsInitDoneImpl
Entry Point: 0076cdc0


Total instructions: 0

ORIGINAL BOUNDED PE BYTES (16 per line)
0076cdc0: e8 cb c5 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
0076cdd0: d0 8b 4c 24 08 8b 10 8b 52 08 51 8b 4c 24 08 51
0076cde0: 8b c8 ff d2 c3

SEPARATE BOUNDED PRISTINE PE LINEAR DECODING
0076cdc0 <original>:
  0076cdc0:	e8 cb c5 ff ff                                 	call   0x769390
  0076cdc5:	8b 10                                          	mov    edx,DWORD PTR [eax]
  0076cdc7:	8b c8                                          	mov    ecx,eax
  0076cdc9:	8b 82 7c 01 00 00                              	mov    eax,DWORD PTR [edx+0x17c]
  0076cdcf:	ff d0                                          	call   eax
  0076cdd1:	8b 4c 24 08                                    	mov    ecx,DWORD PTR [esp+0x8]
  0076cdd5:	8b 10                                          	mov    edx,DWORD PTR [eax]
  0076cdd7:	8b 52 08                                       	mov    edx,DWORD PTR [edx+0x8]
  0076cdda:	51                                             	push   ecx
  0076cddb:	8b 4c 24 08                                    	mov    ecx,DWORD PTR [esp+0x8]
  0076cddf:	51                                             	push   ecx
  0076cde0:	8b c8                                          	mov    ecx,eax
  0076cde2:	ff d2                                          	call   edx
  0076cde4:	c3                                             	ret
