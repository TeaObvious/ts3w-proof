/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161558 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_PostPipeMessage [assembly=ScriptCore
   token=0x0600062D; pipename: Sims3Launcher.S3L_ServerName, message:
   Sims3Launcher.S3L_NamedPipeMessage, messageData: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.OnlineFeatures::OnlineFeaturesHost_PostPipeMessage
          (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  short *psVar2;
  undefined4 uVar3;
  int unaff_ESI;
  undefined4 unaff_retaddr;
  int iStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_3);
  FUN_0060c220((undefined4 *)&stack0xffffffec);
  FUN_00897b10(2);
  if ((2 < (int)(iStack_c - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
    FUN_004e44e0(unaff_ESI);
  }
  if (DAT_011cfca0 != 0) {
    uVar3 = FUN_0060bf10((void *)(DAT_011cfca0 + -0x10),unaff_retaddr,param_1,psVar2);
    return uVar3;
  }
  uVar3 = FUN_0060bf10((void *)0x0,unaff_retaddr,param_1,psVar2);
  return uVar3;
}

