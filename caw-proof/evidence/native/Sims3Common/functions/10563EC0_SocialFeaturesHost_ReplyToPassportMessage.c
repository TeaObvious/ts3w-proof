/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x10563c40) */
/* WARNING: Removing unreachable block (ram,0x10563c44) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_ReplyToPassportMessage. Export
   ordinal(s): 979. Entry VA: 0x10563ec0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600092D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SocialFeaturesHost_ReplyToPassportMessage(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 *unaff_retaddr;
  int aiStack_14 [2];
  int iStack_c;
  
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 == (int *)0x0) {
    return 0xffffffff;
  }
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_2);
  puVar3 = FUN_10926f20(aiStack_14,pWVar2,0xffffffff,(char *)0x0);
  if (puVar3 != (undefined4 *)&stack0xffffffdc) {
    FUN_1000e8a0(&stack0xffffffdc,(void *)*puVar3,(undefined1 *)puVar3[1]);
  }
  if ((1 < iStack_c - aiStack_14[0]) && (aiStack_14[0] != 0)) {
    FUN_10918e90(aiStack_14[0]);
  }
  uVar4 = FUN_10810440(unaff_retaddr,&_Dst_10ca8244);
  return uVar4;
}

