/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_RecordExists. Export ordinal(s):
   2037. Entry VA: 0x10989ef0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600089C. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl ResourceMgr_RecordExists(uint param_1,uint param_2,uint param_3,uint param_4)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  uint *puVar4;
  uint unaff_ESI;
  uint local_30;
  uint local_2c;
  uint local_28;
  uint local_24;
  uint uStack_20;
  uint uStack_1c;
  uint uStack_18;
  uint auStack_14 [5];
  
                    /* 0x989ef0  2037  ResourceMgr_RecordExists */
  piVar2 = (int *)FUN_108e50d0();
  if (piVar2 == (int *)0x0) {
    return false;
  }
  local_30 = param_3;
  local_2c = param_4;
  local_28 = param_1;
  local_24 = param_2;
  piVar3 = (int *)(**(code **)(*piVar2 + 0x44))(&local_30);
  if (piVar3 == (int *)0x0) {
    uStack_20 = local_30;
    uStack_1c = local_2c;
    uStack_18 = local_28;
    local_24 = unaff_ESI;
    puVar4 = (uint *)FUN_105ca720(auStack_14,&local_24);
    local_30 = puVar4[1];
    local_2c = puVar4[2];
    local_28 = puVar4[3];
    if ((((*puVar4 != local_24) || (local_2c != uStack_1c)) || (local_28 != uStack_18)) ||
       (local_30 != uStack_20)) {
      piVar3 = (int *)(**(code **)(*piVar2 + 0x44))(&stack0xffffffcc);
      if (piVar3 != (int *)0x0) goto LAB_10989fb6;
    }
    return false;
  }
LAB_10989fb6:
  cVar1 = (**(code **)(*piVar3 + 0x34))(&stack0xffffffcc,0,1,6,1,0);
  return cVar1 != '\0';
}

