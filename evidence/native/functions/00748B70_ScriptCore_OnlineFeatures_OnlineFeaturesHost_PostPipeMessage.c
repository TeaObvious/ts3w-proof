/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161558 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *unaff_ESI;
  undefined4 unaff_retaddr;
  int aiStack_c [3];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_3);
  FUN_0060c220(aiStack_c + -2);
  FUN_00897b10(2);
  if ((2 < (int)(aiStack_c[0] - (int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  if (DAT_011cfca0 == 0) {
    uVar3 = FUN_0060bf10((void *)0x0,unaff_retaddr,param_1,psVar2);
    return uVar3;
  }
  uVar3 = FUN_0060bf10((void *)(DAT_011cfca0 + -0x10),unaff_retaddr,param_1,psVar2);
  return uVar3;
}

