; PC1.67 original Ghidra-owned instruction listing.
; Analyst-assigned name: ModelComponent_SetRenderFlagsOverride
; Inclusive owned ranges: 00948D80..00948D8E
; Paired C retains actual provisional types; original instructions govern physical ABI.

00948D80  8B442404                        MOV EAX, dword ptr [ESP + 0x4]
00948D84  894150                          MOV dword ptr [ECX + 0x50], EAX
00948D87  E874FDFFFF                      CALL 0x00948b00
00948D8C  C20400                          RET 0x4
