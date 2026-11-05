/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetPointAtDistanceOnPathway. Export
   ordinal(s): 657. Entry VA: 0x10542f90. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000192. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
Route_GetPointAtDistanceOnPathway
          (uint param_1,undefined4 param_2,void *param_3,void *param_4,undefined4 *param_5)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  int *piVar5;
  undefined4 uStack_34;
  undefined4 auStack_30 [4];
  undefined1 auStack_20 [28];
  
                    /* 0x542f90  657  Route_GetPointAtDistanceOnPathway */
  if (DAT_10c78944 == (void *)0x0) {
    return;
  }
  piVar3 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
  if (piVar3 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar3 + 0x10))();
  if ((char)piVar3[0x3d] == '\0') {
    piVar5 = piVar3 + 0x38;
    if ((int *)*piVar5 == piVar5) goto LAB_10543056;
    piVar5 = *(int **)(*piVar5 + 8);
  }
  else {
    piVar5 = (int *)piVar3[0x3b];
  }
  if (piVar5 != (int *)0x0) {
    piVar1 = piVar5 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    puVar4 = (undefined4 *)(**(code **)(*piVar5 + 0x11c))(auStack_20,param_2,auStack_30,&uStack_34);
    FUN_1055dbd0(param_3,puVar4);
    FUN_1055dbd0(param_4,auStack_30);
    *param_5 = uStack_34;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*piVar5)(1);
    }
  }
LAB_10543056:
  (**(code **)(*piVar3 + 0x14))();
  return;
}

