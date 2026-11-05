/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_SetPositionAndTarget. Export ordinal(s):
   303. Entry VA: 0x1052f5d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A24. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Camera_SetPositionAndTarget(void)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 local_30 [4];
  undefined4 local_20 [7];
  
                    /* 0x52f5d0  303  Camera_SetPositionAndTarget */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        iVar1 = *piVar2;
        uVar3 = FUN_1055db20(&stack0x00000010,local_30);
        uVar4 = FUN_1055db20(&stack0x00000004,local_20);
        (**(code **)(iVar1 + 0x2c))(uVar4,uVar3);
      }
    }
  }
  return;
}

