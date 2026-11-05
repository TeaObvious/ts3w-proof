/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67; descriptive analyst name. Physical ECX floor manager plus packed cell-part
   pointer and64-byte output pointer stack slots, RET8; no returnvalue contract. Preserve owner
   inESI, queue outputpointer on stack, callA8D1C0 with cell-part pointer, restore ownerECX and PUSH
   EAX as cellID intoA8EE40. Its first MOVZX consumes only low16bits of that ID, so inferred ushort
   adapter agrees without claiming upperEAX is normalized. A8EE40 selects
   default/reverse-map/nullquad and copies16DWORDs. GroundAD0E20 and FloorAD0EE0 call this exact
   wrapper. Grid indexing/part-mask selection insideA8D1C0 remains a separate producer contract; no
   new wire-layout guess. Complete32ownedbytes/13instructions; current ABI/types/bytes unchanged. */

void __thiscall FloorManager_CopyPatternKeysAtCellPart(void *this,char *param_1,undefined4 *param_2)

{
  ushort uVar1;
  
  uVar1 = FUN_00a8d1c0(this,param_1);
  FloorManager_CopyPatternKeysForCellId(this,uVar1,param_2);
  return;
}

