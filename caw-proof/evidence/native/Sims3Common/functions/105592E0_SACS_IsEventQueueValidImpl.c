/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_IsEventQueueValidImpl. Export ordinal(s):
   723. Entry VA: 0x105592e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EA6. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl SACS_IsEventQueueValidImpl(undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  
                    /* 0x5592e0  723  SACS_IsEventQueueValidImpl */
  piVar1 = (int *)FUN_1055b120();
  iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
  if (iVar2 != 0) {
    iVar2 = (**(code **)(*piVar1 + 200))(*(undefined4 *)(iVar2 + 300),0x22);
    if (iVar2 != 0) {
      uVar3 = (**(code **)(*piVar1 + 0xd8))(iVar2);
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
  }
  return 0;
}

