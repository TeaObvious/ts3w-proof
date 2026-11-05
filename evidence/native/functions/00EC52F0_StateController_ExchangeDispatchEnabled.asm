# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ec52f0 (StateController_ExchangeDispatchEnabled)
Paired actual Ghidra pseudocode: 00EC52F0_StateController_ExchangeDispatchEnabled.c
Envelope [0x00ec52f0,0x00ec5301); 17 bytes; exact owned ranges: [0x00ec52f0,0x00ec5301)
Owned: 17 original bytes / 6 instructions.
Contiguous complete existing function body; no definition/body/instruction changes.
Stored prototypes are preserved inferred projections; physical register/stack/return facts are in the entry annotation. Child contracts remain separate.

LINEAR DISASSEMBLY
00ec52f0 <original>:
  ec52f0:	33 c0                	xor    eax,eax
  ec52f2:	38 44 24 04          	cmp    BYTE PTR [esp+0x4],al
  ec52f6:	0f 95 c0             	setne  al
  ec52f9:	83 c1 10             	add    ecx,0x10
  ec52fc:	87 01                	xchg   DWORD PTR [ecx],eax
  ec52fe:	c2 04 00             	ret    0x4
