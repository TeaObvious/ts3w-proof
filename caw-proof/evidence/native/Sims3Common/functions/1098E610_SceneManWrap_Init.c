/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_Init. Export ordinal(s): 2265. Entry
   VA: 0x1098e610. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000137. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl SceneManWrap_Init(void *param_1,undefined1 param_2)

{
  uint uVar1;
  void *pvVar2;
  int iVar3;
  undefined4 *puVar4;
  
                    /* 0x98e610  2265  SceneManWrap_Init */
  uVar1 = FUN_104e9a70(param_1);
  if ((char)uVar1 != '\0') {
    *(undefined1 *)(*(int *)((int)param_1 + 0xc) + 0x19) = param_2;
    pvVar2 = (void *)FUN_104de3a0();
    if (param_1 == pvVar2) {
      iVar3 = FUN_104f31a0();
      if (iVar3 != 0) {
        *(undefined1 *)(iVar3 + 0x10b9) = param_2;
      }
    }
    pvVar2 = (void *)FUN_104de3a0();
    if (pvVar2 == param_1) {
      puVar4 = (undefined4 *)FUN_1050d160();
      if (puVar4 != (undefined4 *)0x0) {
        (**(code **)*puVar4)(param_1);
      }
    }
    return 1;
  }
  return 0;
}

