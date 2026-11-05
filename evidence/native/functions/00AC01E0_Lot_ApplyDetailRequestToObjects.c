/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Queued promotion callback. If lot+c9 is set, clears
   requested+c1 and returns. Otherwise brackets original events04c55e8c/04c55efa and applies00abe9f0
   to each object with the two supplied low-byte flags. Normal Lot_SetDetailRequested passes
   bothzero; remote execution timing is not proven synchronous here.
   Instruction boundary review: complete original body is 00ac01e0..00ac024b. The JZ at00ac01ed
   reaches00ac01fd after the early RET8; final RET8 is00ac0249. Both branches and the object-loop
   call00ac022d are included. this=ECX; two low-byte flags occupy stackwords; no original bytes
   changed. */

void __thiscall Lot_ApplyDetailRequestToObjects(void *this,uchar includeSpecial,uchar specialOnly)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  int local_8 [2];
  
  if (*(char *)((int)this + 0xc9) != '\0') {
    *(undefined1 *)((int)this + 0xc1) = 0;
    return;
  }
  FUN_007d3170(local_8,0x4c55e8c,0x4c55efa,this);
  puVar1 = *(undefined4 **)((int)this + 0x18);
  for (puVar2 = *(undefined4 **)((int)this + 0x14); puVar2 != puVar1; puVar2 = puVar2 + 1) {
    Lot_ApplyObjectDisplayDetail(this,(void *)*puVar2,includeSpecial,specialOnly);
  }
  FUN_007d31b0(local_8);
  return;
}

