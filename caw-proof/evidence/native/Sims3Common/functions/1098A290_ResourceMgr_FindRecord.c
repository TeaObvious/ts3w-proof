/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_FindRecord. Export ordinal(s): 2021.
   Entry VA: 0x1098a290. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600089E. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl
ResourceMgr_FindRecord(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int *unaff_EBX;
  int *unaff_EBP;
  int *piVar6;
  int *local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98a290  2021  ResourceMgr_FindRecord */
  local_14 = (int *)0x0;
  piVar2 = (int *)FUN_108e50d0();
  if (piVar2 == (int *)0x0) {
    if (local_14 != (int *)0x0) {
      (**(code **)(*local_14 + 8))();
    }
    return 0;
  }
  local_10 = param_3;
  local_c = param_4;
  local_8 = param_1;
  local_4 = param_2;
  piVar2 = (int *)(**(code **)(*piVar2 + 0x44))(&local_10);
  if (piVar2 == (int *)0x0) {
    if (unaff_EBX != (int *)0x0) {
      (**(code **)(*unaff_EBX + 8))();
    }
    return 0;
  }
  if (unaff_EBX != (int *)0x0) {
    (**(code **)(*unaff_EBX + 8))();
  }
  piVar6 = (int *)&DAT_00000001;
  cVar1 = (**(code **)(*piVar2 + 0x34))(&local_14,&stack0xffffffe8,1,6,1,0);
  if (cVar1 == '\0') {
    if (piVar6 != (int *)0x0) {
      (**(code **)(*piVar6 + 8))();
    }
    return 0;
  }
  piVar2 = (int *)(**(code **)(*piVar6 + 0x18))();
  iVar3 = (**(code **)(*piVar2 + 0x1c))();
  iVar4 = Ordinal_411(0x11,0,iVar3);
  if (iVar4 != 0) {
    iVar5 = Ordinal_21(iVar4);
    if (-1 < iVar5) {
      iVar5 = (**(code **)(*piVar2 + 0x30))(*(undefined4 *)(iVar4 + 0xc),iVar3);
      Ordinal_22(iVar4);
      if (iVar3 == iVar5) goto LAB_1098a3a1;
    }
    Ordinal_16(iVar4);
    iVar4 = 0;
  }
LAB_1098a3a1:
  (**(code **)(*unaff_EBP + 0x20))();
  if (unaff_EBP != (int *)0x0) {
    (**(code **)(*unaff_EBP + 8))();
  }
  return iVar4;
}

