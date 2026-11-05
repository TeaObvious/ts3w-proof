/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00996761) */
/* WARNING: Removing unreachable block (ram,0x00996723) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x011816c8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_ImportLotContentsFromExportBinImpl
   [assembly=ScriptCore token=0x060000A7; packageFile: System.String, oldLotContentId:
   System.UInt64&; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 __cdecl
ScriptCore.DownloadContent::DownloadContent_ImportLotContentsFromExportBinImpl(undefined4 param_1)

{
  void *this;
  int *piVar1;
  short *psVar2;
  undefined4 uVar3;
  undefined8 uVar4;
  void *pvStack_2c;
  uint uStack_28;
  int iStack_24;
  char *pcStack_20;
  uint auStack_1c [7];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    pvStack_2c = (void *)0x0;
    uStack_28 = 0;
    iStack_24 = 0;
    pcStack_20 = "Services/DownloadContentHost/EBPackageFile";
    FUN_0040b590(&pvStack_2c,psVar2);
    this = DAT_011ea6a4;
    uVar3 = FUN_009a1670((int)DAT_011ea6a4);
    if (((char)uVar3 == '\0') &&
       (uVar3 = FUN_009a2eb0(this,&pvStack_2c,(int *)(auStack_1c + -5)), (char)uVar3 != '\0')) {
      FUN_007d7920(auStack_1c,0,1);
      uVar4 = FUN_00ad5b30(auStack_1c);
      FUN_009a1600((int)this);
      StreamReader_ReleaseAuxiliary(auStack_1c);
      if ((2 < (int)(iStack_24 - (int)pvStack_2c & 0xfffffffeU)) && (pvStack_2c != (void *)0x0)) {
        Memory_FreeIfNonNull(pvStack_2c);
      }
      return uVar4;
    }
    if ((2 < (int)(iStack_24 - (int)pvStack_2c & 0xfffffffeU)) && (pvStack_2c != (void *)0x0)) {
      Memory_FreeIfNonNull(pvStack_2c);
    }
  }
  return 0;
}

