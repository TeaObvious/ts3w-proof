/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x007713b5) */
/* WARNING: Removing unreachable block (ram,0x007713b9) */
/* Verified PC 1.67 registration table at 0x01162440 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_SendPost [assembly=ScriptCore token=0x06000A83;
   nucleusID: System.Int64, text: System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_SendPost
          (int param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  int unaff_retaddr;
  int aiStack_14 [2];
  int iStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_3);
  puVar3 = FUN_004f3cc0(aiStack_14,pWVar2,0xffffffff,(char *)0x0);
  if (puVar3 != (undefined4 *)&stack0xffffffdc) {
    FUN_00405910(&stack0xffffffdc,(void *)*puVar3,(undefined1 *)puVar3[1]);
  }
  if ((1 < iStack_c - aiStack_14[0]) && (aiStack_14[0] != 0)) {
    FUN_004e44e0(aiStack_14[0]);
  }
  uVar4 = FUN_00a237b0(unaff_retaddr,param_1,&DAT_011c8e54);
  return uVar4;
}

