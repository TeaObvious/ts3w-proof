/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_IsCatalogProductVisibleInWB. Export
   ordinal(s): 2032. Entry VA: 0x1098a570. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060008AB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 __cdecl ResourceMgr_IsCatalogProductVisibleInWB(undefined4 *param_1)

{
  undefined1 uVar1;
  char cVar2;
  int *piVar3;
  int iVar4;
  int *piVar5;
  undefined4 local_14;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98a570  2032  ResourceMgr_IsCatalogProductVisibleInWB */
  piVar3 = (int *)FUN_108e50d0();
  if (piVar3 != (int *)0x0) {
    local_10 = param_1[2];
    local_c = param_1[3];
    local_8 = *param_1;
    local_4 = param_1[1];
    local_14 = 0;
    piVar5 = &local_10;
    cVar2 = (**(code **)(*piVar3 + 0xc))(piVar5,&local_14,0,0,0,0);
    if (cVar2 != '\0') {
      if (piVar5 == (int *)0x0) {
        return 0;
      }
      iVar4 = (**(code **)(*piVar5 + 0xc))(0x519e4f25);
      if (iVar4 != 0) {
        uVar1 = *(undefined1 *)(iVar4 + 0x87);
        if (piVar5 != (int *)0x0) {
          (**(code **)(*piVar5 + 4))();
        }
        return uVar1;
      }
    }
    if (piVar5 != (int *)0x0) {
      (**(code **)(*piVar5 + 4))();
    }
  }
  return 0;
}

