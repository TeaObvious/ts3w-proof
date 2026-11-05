/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01181650 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  undefined1 auStack_e [14];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    puVar2 = (ushort *)(**(code **)(*piVar1 + 0x58))(param_1);
    FUN_005020a0(auStack_e + -6,puVar2,0x10);
    this = DownloadContent_GetOwnerFromGlobalLink();
    if (this != (void *)0x0) {
      uVar3 = FUN_0098f000(this,(_GUID *)(auStack_e + -6),2,'\x01','\0');
      iVar4 = FUN_009b0c60();
      if (iVar4 != 0) {
        FUN_009b0ca0(iVar4);
      }
      return uVar3;
    }
  }
  return 1;
}

