/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181740 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_ManifestContainsChallengeGuid [assembly=ScriptCore
   token=0x060000F4; challengeGuid: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_DownloadContent__DownloadContent_ManifestContainsChallengeGuid(undefined4 param_1)

{
  int *piVar1;
  ushort *puVar2;
  uint uVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puVar2 = (ushort *)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((DAT_011d5068 != 0) && (DAT_011d5068 != 8)) {
    uVar3 = FUN_00881a80(puVar2);
    return uVar3;
  }
  return (uint)puVar2 & 0xffffff00;
}

