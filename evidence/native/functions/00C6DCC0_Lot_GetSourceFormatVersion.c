/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 Room provenance gate: entire5byte/2instruction body C6DCC0..C6DCC4 is MOV AX,word
   ptr[ECX+78];RET. Caller B52060 consumes AX and MOVZX retains the enclosingLOT UInt16, later
   pushed as the fifth RoomManager input at B52354..6F. It is distinct from grid header word0 and
   room-index version. Existing ECX register-input/AX return metadata is preserved; no guessed
   second fastcall register or cosmetic prototype change. */

undefined2 __fastcall Lot_GetSourceFormatVersion(int param_1)

{
  return *(undefined2 *)(param_1 + 0x78);
}

