/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtilsWrap_PartDataNumPresets. Export
   ordinal(s): 1742. Entry VA: 0x1097f310. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060001C5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl
CASUtilsWrap_PartDataNumPresets
          (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  undefined4 local_14;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x97f310  1742  CASUtilsWrap_PartDataNumPresets */
  piVar2 = (int *)FUN_108e50d0();
  local_10 = param_3;
  local_8 = param_1;
  local_c = param_4;
  local_4 = param_2;
  local_14 = 0;
  piVar4 = &local_10;
  cVar1 = (**(code **)(*piVar2 + 0xc))(piVar4,&local_14,0,0,0,0);
  if (cVar1 == '\0') {
    return 0;
  }
  if ((piVar4 != (int *)0x0) &&
     (piVar2 = (int *)(**(code **)(*piVar4 + 0xc))(0x34c777b), piVar2 != (int *)0x0)) {
    iVar3 = FUN_103aa800((int)piVar2);
    (**(code **)(*piVar2 + 4))();
    return iVar3;
  }
  (**(code **)(*piVar4 + 4))();
  return 0;
}

