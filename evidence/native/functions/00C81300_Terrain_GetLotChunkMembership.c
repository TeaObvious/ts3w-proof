/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 memoized per-lot terrain chunk membership. Physical ECX terrain owner and one lot
   pointer; RET 04; returns vector pointer in EAX. Two DWORDs at lot+48/+4C are the actual
   structured identity key into owner+178 map. A found node returns node+8 directly. A missing node
   is created before candidate traversal; iterate owner+B0/B4 as four-byte candidate pointers,
   append only when the existing 00C7E8A0 predicate returns true in AL. Full geometry of that child
   and outer invalidation/destruction are unresolved boundaries here. Decompiler float-looking
   locals are pointer/DWORD storage, with no floating-point operations in this complete body. No
   null-lot guard or managed reference-key invalidation/rollback guarantee is invented. */

void * __thiscall Terrain_GetLotChunkMembership(void *this,void *param_1)

{
  float fVar1;
  float *pfVar2;
  float fVar3;
  int *piVar4;
  undefined4 uVar5;
  void *this_00;
  float *pfVar6;
  float local_14 [3];
  float *local_8;
  undefined4 local_4;
  
                    /* Two original lot identity DWORDs, not float values or managed array
                       references. Map lookup precedes missing-entry population. */
  local_4 = *(undefined4 *)((int)param_1 + 0x4c);
  local_8 = *(float **)((int)param_1 + 0x48);
  piVar4 = (int *)FUN_0071e680((void *)((int)this + 0x178),local_14,(uint *)&local_8);
  if (*piVar4 == *(int *)(*(int *)((int)this + 0x17c) + *(int *)((int)this + 0x180) * 4)) {
    local_14[0] = (float)((uint)local_14[0] & 0xffffff00);
    FUN_00c80800((void *)((int)this + 0x178),(int *)local_14,(uint *)&local_8);
    fVar3 = local_14[0];
    local_8 = *(float **)((int)this + 0xb4);
    pfVar6 = *(float **)((int)this + 0xb0);
    this_00 = (void *)((int)local_14[0] + 8);
    if (pfVar6 != local_8) {
      do {
        fVar1 = *pfVar6;
        local_14[0] = fVar1;
        uVar5 = FUN_00c7e8a0(fVar1,param_1);
        if ((char)uVar5 != '\0') {
          pfVar2 = *(float **)((int)fVar3 + 0xc);
          if (pfVar2 < *(float **)((int)fVar3 + 0x10)) {
            *(float **)((int)fVar3 + 0xc) = pfVar2 + 1;
            if (pfVar2 != (float *)0x0) {
              *pfVar2 = fVar1;
            }
          }
          else {
            FUN_00982420(this_00,pfVar2,local_14);
          }
        }
        pfVar6 = pfVar6 + 1;
      } while (pfVar6 != local_8);
    }
    return this_00;
  }
  return (void *)(*piVar4 + 8);
}

