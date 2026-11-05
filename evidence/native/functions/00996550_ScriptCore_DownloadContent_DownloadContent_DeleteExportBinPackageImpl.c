/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x009965b9) */
/* WARNING: Removing unreachable block (ram,0x009965bd) */
/* Verified PC 1.67 registration table at 0x011817a0 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_DeleteExportBinPackageImpl [assembly=ScriptCore
   token=0x06000108; package: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.DownloadContent::DownloadContent_DeleteExportBinPackageImpl(undefined4 param_1)

{
  int *piVar1;
  short *psVar2;
  uint uVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  FUN_0040b590(&stack0xffffffec,psVar2);
  uVar3 = FUN_009a3090(DAT_011ea6a4,(undefined4 *)&stack0xffffffec);
  return uVar3 & 0xff;
}

