/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX compressedgrid plus fourwords(valuesptr,x,z,storagelevel), void RET10. Same block/tag/cell selection as AB3E50; uniform unchanged4word returns; changeduniform expands viaAC08B0/AB42D0 then copies fourDWORDs. Allocator/refcounts/partialfault/concurrency remain open. */

void __thiscall FUN_00ac2ed0(void *this,undefined4 *param_1,uint param_2,uint param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  ushort *puVar5;
  int iVar6;
  int iVar7;
  
  iVar2 = (*(int *)((int)this + 0x20) * param_4 + ((int)param_2 >> 2)) * *(int *)((int)this + 0x24)
          + ((int)param_3 >> 2);
  iVar1 = iVar2 * 2;
  puVar5 = (ushort *)(*(int *)((int)this + 0x48) + iVar1);
  if ((*puVar5 & 0x8000) != 0) {
    iVar2 = iVar2 * 0x10;
    iVar6 = 0;
    piVar3 = (int *)(*(int *)((int)this + 0x38) + iVar2);
    while (param_1[iVar6] == *piVar3) {
      iVar6 = iVar6 + 1;
      piVar3 = piVar3 + 1;
      if (3 < iVar6) {
        return;
      }
    }
    iVar6 = *(int *)((int)this + 0x2c) - *(int *)((int)this + 0x28);
    iVar7 = iVar6 >> 4;
    FUN_00ac08b0((int *)((int)this + 0x28),iVar7 + 0x10);
    FUN_00ab42d0((undefined4 *)(iVar7 * 0x10 + *(int *)((int)this + 0x28)),
                 *(undefined4 **)((int)this + 0x2c),
                 (undefined4 *)(*(int *)((int)this + 0x38) + iVar2));
    *(short *)(iVar1 + *(int *)((int)this + 0x48)) = (short)((uint)iVar6 >> 8);
  }
  puVar4 = (undefined4 *)
           (((param_3 & 3) + ((param_2 & 3) + (uint)*puVar5 * 4) * 4) * 0x10 +
           *(int *)((int)this + 0x28));
  *puVar4 = *param_1;
  puVar4[1] = param_1[1];
  puVar4[2] = param_1[2];
  puVar4[3] = param_1[3];
  return;
}
