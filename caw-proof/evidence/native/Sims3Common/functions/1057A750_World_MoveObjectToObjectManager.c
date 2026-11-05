/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_MoveObjectToObjectManager. Export
   ordinal(s): 1466. Entry VA: 0x1057a750. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000BA7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
World_MoveObjectToObjectManager(undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  int *piVar4;
  uint local_4;
  
                    /* 0x57a750  1466  World_MoveObjectToObjectManager */
  iVar1 = FUN_1072a1a0();
  if ((iVar1 != 0) && (uVar2 = FUN_1072abb0(iVar1), uVar2 != 0)) {
    LOCK();
    *(int *)(uVar2 + 4) = *(int *)(uVar2 + 4) + 1;
    UNLOCK();
    local_4 = uVar2;
    if (DAT_10c700c4 == (void *)0x0) {
      FUN_10656ec0((int *)&local_4);
      return;
    }
    piVar4 = (int *)0x0;
    if (((param_3 == 0 && param_4 == 0) ||
        (((piVar4 = *(int **)((int)DAT_10c700c4 + 0xb0), param_3 == piVar4[0x12] &&
          (param_4 == piVar4[0x13])) ||
         (piVar4 = FUN_10234ba0(DAT_10c700c4,param_3,param_4,(int *)0x0), piVar4 != (int *)0x0))))
       && (piVar3 = (int *)FUN_10967620(uVar2), piVar4 != piVar3)) {
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x3c))(uVar2,0);
      }
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 0x30))(uVar2);
      }
    }
    FUN_10656ec0((int *)&local_4);
  }
  return;
}

