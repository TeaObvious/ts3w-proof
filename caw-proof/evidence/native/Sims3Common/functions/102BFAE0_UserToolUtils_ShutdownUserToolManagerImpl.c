/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_ShutdownUserToolManagerImpl. Export
   ordinal(s): 1233. Entry VA: 0x102bfae0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A78. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void UserToolUtils_ShutdownUserToolManagerImpl(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  
                    /* 0x2bfae0  1233  UserToolUtils_ShutdownUserToolManagerImpl */
  if (*(void **)(DAT_10c70c20 + 8) != (void *)0x0) {
    FUN_102c7cc0(*(void **)(DAT_10c70c20 + 8));
    puVar3 = *(undefined4 **)(DAT_10c70c20 + 8);
    if (puVar3 != (undefined4 *)0x0) {
      *(undefined4 *)(DAT_10c70c20 + 8) = 0;
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
  return;
}

