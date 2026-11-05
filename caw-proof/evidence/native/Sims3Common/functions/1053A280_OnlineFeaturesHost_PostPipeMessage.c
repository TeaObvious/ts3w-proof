/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_PostPipeMessage. Export
   ordinal(s): 521. Entry VA: 0x1053a280. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600058B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
OnlineFeaturesHost_PostPipeMessage(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  short *psVar2;
  undefined4 uVar3;
  int unaff_ESI;
  undefined4 unaff_retaddr;
  int iStack_c;
  
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_3);
  FUN_10406dd0((undefined4 *)&stack0xffffffec);
  FUN_1068bb80(2);
  if ((2 < (int)(iStack_c - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
    FUN_10918e90(unaff_ESI);
  }
  if (DAT_10c735c0 != 0) {
    uVar3 = FUN_10406ac0((void *)(DAT_10c735c0 + -0x10),unaff_retaddr,param_1,psVar2);
    return uVar3;
  }
  uVar3 = FUN_10406ac0((void *)0x0,unaff_retaddr,param_1,psVar2);
  return uVar3;
}

