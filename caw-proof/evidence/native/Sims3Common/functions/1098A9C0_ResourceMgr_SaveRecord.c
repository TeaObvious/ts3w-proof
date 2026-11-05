/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_SaveRecord. Export ordinal(s): 2042.
   Entry VA: 0x1098a9c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600089A. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl
ResourceMgr_SaveRecord
          (uint param_1,undefined4 param_2,undefined4 param_3,int param_4,undefined4 param_5)

{
  int *piVar1;
  void *pvVar2;
  uint uVar3;
  char cVar4;
  int iVar5;
  int *piVar6;
  undefined4 unaff_retaddr;
  int *piVar7;
  int *piVar8;
  int local_14;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98a9c0  2042  ResourceMgr_SaveRecord */
  piVar8 = &local_14;
  iVar5 = FUN_108e50d0();
  pvVar2 = DAT_10cb8078;
  if (iVar5 == 0) {
    return 0;
  }
  FUN_106a8410(DAT_10cb8078,&local_10,&param_1);
  if (local_10 != *(int *)(*(int *)((int)pvVar2 + 4) + *(int *)((int)pvVar2 + 8) * 4)) {
    piVar1 = *(int **)(local_10 + 4);
    local_10 = param_4;
    local_8 = param_2;
    local_c = param_5;
    local_14 = 0;
    local_4 = param_3;
    piVar7 = &local_10;
    cVar4 = (**(code **)(*piVar1 + 0x34))(piVar7,&local_14,3,2,1,0);
    uVar3 = param_1;
    if (cVar4 != '\0') {
      if (piVar8 != (int *)0x0) {
        if (0 < (int)param_1) {
          piVar6 = (int *)(**(code **)(*piVar8 + 0x18))();
          (**(code **)(*piVar6 + 0x38))(unaff_retaddr,uVar3);
        }
        (**(code **)(*piVar1 + 0x3c))(piVar8);
        (**(code **)(*piVar7 + 8))();
      }
      return 1;
    }
  }
  return 0;
}

