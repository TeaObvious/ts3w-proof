# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00adc720 (PackedLotLocation_WriteXZAndLevel)
Paired actual Ghidra pseudocode: 00ADC720_PackedLotLocation_WriteXZAndLevel.c
Envelope [0x00adc720,0x00adc748); 40 bytes; exact owned ranges: [0x00adc720,0x00adc748)
Owned: 40 original bytes / 11 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00adc720 <original>:
  00adc720:	8b 44 24 04                                    	MOV EAX,dword ptr [ESP + 0x4]
  00adc724:	0f be 08                                       	MOVSX ECX,byte ptr [EAX]
  00adc727:	f3 0f 2a c1                                    	CVTSI2SS XMM0,ECX
  00adc72b:	8b 4c 24 08                                    	MOV ECX,dword ptr [ESP + 0x8]
  00adc72f:	f3 0f 11 01                                    	MOVSS dword ptr [ECX],XMM0
  00adc733:	0f be 50 01                                    	MOVSX EDX,byte ptr [EAX + 0x1]
  00adc737:	f3 0f 2a c2                                    	CVTSI2SS XMM0,EDX
  00adc73b:	f3 0f 11 41 04                                 	MOVSS dword ptr [ECX + 0x4],XMM0
  00adc740:	0f be 40 02                                    	MOVSX EAX,byte ptr [EAX + 0x2]
  00adc744:	89 41 08                                       	MOV dword ptr [ECX + 0x8],EAX
  00adc747:	c3                                             	RET
