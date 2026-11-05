/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Resizes vector of16-byte records to count,
   zero-initializing all four DWORDs of appended records via00c64b00; not merely reserve. This
   explains score-vector end pointer and skipped-lot zero tail in caller. */

void __thiscall LotDetailScores_Resize(void *this,uint count)

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
  if (uVar3 < count) {
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
    FUN_00c64b00(this,puVar1,count - uVar3,&local_10);
    return;
  }
  puVar2 = (undefined4 *)(count * 0x10 + *(int *)this);
  FUN_007fff00(puVar1,puVar1,puVar2);
  *(int *)((int)this + 4) = *(int *)((int)this + 4) + ((int)puVar1 - (int)puVar2 >> 4) * -0x10;
  return;
}

