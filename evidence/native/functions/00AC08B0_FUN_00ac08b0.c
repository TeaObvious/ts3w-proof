/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Four-word vector resize; descriptive label, not recovered original symbol.
   ECX vector plus UInt32 requested element count, RET4 void. Element size16; growing inserts all-FFFFFFFF four-word values via7996F0 at old end. Shrink/equal invokes7FFF00 on empty [oldEnd,oldEnd) then changes end to begin+requested*16, leaving allocation/capacity retained. No whole-grid compression reset or OOM guarantee. */

void __thiscall FUN_00ac08b0(void *this,uint param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  uint uVar3;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  puVar1 = *(undefined4 **)((int)this + 4);
  uVar3 = (int)puVar1 - *(int *)this >> 4;
  if (uVar3 < param_1) {
    local_10 = 0xffffffff;
    local_c = 0xffffffff;
    local_8 = 0xffffffff;
    local_4 = 0xffffffff;
    FUN_007996f0(this,puVar1,param_1 - uVar3,&local_10);
    return;
  }
  puVar2 = (undefined4 *)(param_1 * 0x10 + *(int *)this);
  FUN_007fff00(puVar1,puVar1,puVar2);
  *(int *)((int)this + 4) = *(int *)((int)this + 4) + ((int)puVar1 - (int)puVar2 >> 4) * -0x10;
  return;
}
