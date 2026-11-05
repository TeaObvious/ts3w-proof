/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181650 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_UnInstallContentImpl [assembly=ScriptCore
   token=0x060000E7; packageId: System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.DownloadContent::DownloadContent_UnInstallContentImpl(undefined4 param_1)

{
  int *piVar1;
  ushort *puVar2;
  void *this;
  uint uVar3;
  int iVar4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    puVar2 = (ushort *)(**(code **)(*piVar1 + 0x58))(param_1);
    FUN_005020a0(&stack0xffffffec,puVar2,0x10);
    this = (void *)FUN_00982e60();
    if (this != (void *)0x0) {
      uVar3 = FUN_0098f000(this,(_GUID *)&stack0xffffffec,2,'\x01','\0');
      iVar4 = FUN_009b0c60();
      if (iVar4 != 0) {
        FUN_009b0ca0(iVar4);
      }
      return uVar3;
    }
  }
  return 1;
}

