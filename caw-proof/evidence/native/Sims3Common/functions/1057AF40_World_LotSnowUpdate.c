/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_LotSnowUpdate. Export ordinal(s): 1462.
   Entry VA: 0x1057af40. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BEF. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl World_LotSnowUpdate(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  undefined4 *puVar2;
  
                    /* 0x57af40  1462  World_LotSnowUpdate */
  piVar1 = (int *)FUN_108835e0();
  puVar2 = FUN_100a59b0();
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_FUN_10ab8a58;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_FUN_10ab8a58;
  }
  puVar2[2] = param_1;
  puVar2[3] = param_2;
  (**(code **)(*piVar1 + 0x1c))(0xe616228,puVar2,0,0);
  return;
}

