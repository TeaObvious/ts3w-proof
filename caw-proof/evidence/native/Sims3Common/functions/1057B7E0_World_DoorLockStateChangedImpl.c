/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DoorLockStateChangedImpl. Export
   ordinal(s): 1293. Entry VA: 0x1057b7e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CD8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_DoorLockStateChangedImpl(undefined4 param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  uint uVar2;
  
                    /* 0x57b7e0  1293  World_DoorLockStateChangedImpl */
  iVar1 = FUN_1072a1a0();
  uVar2 = FUN_1072abb0(iVar1);
  if ((uVar2 != 0) && (param_3 != '\0')) {
    FUN_107282f0(0xd,uVar2,1);
  }
  return;
}

