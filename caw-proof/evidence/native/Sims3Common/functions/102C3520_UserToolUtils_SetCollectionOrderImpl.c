/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x102c350e) */
/* WARNING: Type propagation algorithm not settling */
/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_SetCollectionOrderImpl. Export
   ordinal(s): 1226. Entry VA: 0x102c3520. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A93. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UserToolUtils_SetCollectionOrderImpl(undefined4 param_1)

{
  void *this;
  int *piVar1;
  char *apcStack_18 [6];
  
  this = DAT_10c7d328;
  if (DAT_10c7d328 != (void *)0x0) {
    piVar1 = (int *)FUN_1055b120();
    (**(code **)(*piVar1 + 0x68))(param_1);
    if (0 < (int)(apcStack_18 + 1)) {
      apcStack_18[0] = (char *)0x0;
      apcStack_18[1] = (char *)0x0;
      apcStack_18[2] = "Scratch/UserToolHost/SetCollectionOrder";
      FUN_107a2c60(&stack0xffffffe4,apcStack_18,(int)(apcStack_18 + (int)(apcStack_18 + 1) * 2));
      FUN_105d3220(this,(undefined4 *)&stack0xffffffe4);
    }
  }
  return;
}

