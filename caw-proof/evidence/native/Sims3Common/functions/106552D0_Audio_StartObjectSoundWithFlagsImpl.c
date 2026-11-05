/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_StartObjectSoundWithFlagsImpl. Export
   ordinal(s): 36. Entry VA: 0x106552d0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000088. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
Audio_StartObjectSoundWithFlagsImpl(undefined4 param_1,undefined4 param_2,uint param_3)

{
  int iVar1;
  undefined4 *puVar2;
  void *this;
  int *piVar3;
  ushort *puVar4;
  undefined4 uVar5;
  undefined4 *local_4;
  
                    /* 0x6552d0  36  Audio_StartObjectSoundWithFlagsImpl */
  local_4 = (undefined4 *)0x0;
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    puVar2 = (undefined4 *)FUN_1072abb0(iVar1);
    FUN_10673770(&local_4,puVar2);
    puVar2 = local_4;
    if (local_4 != (undefined4 *)0x0) {
      this = (void *)FUN_10726da0(local_4,DAT_10c8d6b0);
      if (this != (void *)0x0) {
        piVar3 = (int *)FUN_1055b120();
        puVar4 = (ushort *)(**(code **)(*piVar3 + 0x58))(param_3);
        uVar5 = FUN_10735960(this,puVar4,param_3,0);
        piVar3 = puVar2 + 1;
        LOCK();
        iVar1 = *piVar3;
        *piVar3 = *piVar3 + -1;
        UNLOCK();
        if (iVar1 == 1) {
          LOCK();
          *piVar3 = 1;
          UNLOCK();
          (**(code **)*puVar2)(1);
        }
        return uVar5;
      }
      piVar3 = puVar2 + 1;
      LOCK();
      iVar1 = *piVar3;
      *piVar3 = *piVar3 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        *piVar3 = 1;
        UNLOCK();
        (**(code **)*puVar2)(1);
      }
    }
  }
  return 0;
}

