/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_InitUserToolManagerImpl. Export
   ordinal(s): 1214. Entry VA: 0x102bfad0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A77. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void UserToolUtils_InitUserToolManagerImpl(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  
  puVar4 = (undefined4 *)FUN_10918eb0(0x1d8,"UserTool/UserToolManager",0);
  if (puVar4 == (undefined4 *)0x0) {
    puVar4 = (undefined4 *)0x0;
  }
  else {
    puVar4 = FUN_102c9370(puVar4);
  }
  puVar3 = *(undefined4 **)(DAT_10c70c20 + 8);
  puVar5 = (undefined4 *)(DAT_10c70c20 + 8);
  if (puVar4 != puVar3) {
    if (puVar4 != (undefined4 *)0x0) {
      LOCK();
      puVar4[1] = puVar4[1] + 1;
      UNLOCK();
    }
    *puVar5 = puVar4;
    if (puVar3 != (undefined4 *)0x0) {
      piVar1 = puVar3 + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
  }
  FUN_102c72c0(*(int *)(DAT_10c70c20 + 8));
  return;
}

