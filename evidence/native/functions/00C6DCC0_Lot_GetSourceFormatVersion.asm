# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[00c6dcc0, 00c6dcc4]]
signature=undefined2 __fastcall Lot_GetSourceFormatVersion(int param_1)
PLATE
PC1.67 Room provenance gate: entire5byte/2instruction body C6DCC0..C6DCC4 is MOV AX,word ptr[ECX+78];RET. Caller B52060 consumes AX and MOVZX retains the enclosingLOT UInt16, later pushed as the fifth RoomManager input at B52354..6F. It is distinct from grid header word0 and room-index version. Existing ECX register-input/AX return metadata is preserved; no guessed second fastcall register or cosmetic prototype change.

00c6dcc0  668b4178  MOV AX,word ptr [ECX + 0x78]
00c6dcc4  c3  RET
