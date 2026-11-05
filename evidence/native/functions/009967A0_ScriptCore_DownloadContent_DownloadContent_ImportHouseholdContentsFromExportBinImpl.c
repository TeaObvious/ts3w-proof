/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x0099688c) */
/* WARNING: Removing unreachable block (ram,0x0099684e) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01181788 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_ImportHouseholdContentsFromExportBinImpl
   [assembly=ScriptCore token=0x060000A8; packageFile: System.String; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 __cdecl
ScriptCore.DownloadContent::DownloadContent_ImportHouseholdContentsFromExportBinImpl
          (undefined4 param_1)

{
  void *this;
  int *piVar1;
  short *psVar2;
  undefined4 uVar3;
  undefined8 uVar4;
  int aiStack_2c [3];
  char *pcStack_20;
  uint auStack_1c [7];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    aiStack_2c[0] = 0;
    aiStack_2c[1] = 0;
    aiStack_2c[2] = 0;
    pcStack_20 = "Services/DownloadContentHost/EBPackageFile";
    FUN_0040b590(aiStack_2c,psVar2);
    this = DAT_011ea6a4;
    uVar3 = FUN_009a1670((int)DAT_011ea6a4);
    if (((char)uVar3 == '\0') &&
       (uVar3 = FUN_009a2eb0(this,aiStack_2c,(int *)&stack0xffffffd0), (char)uVar3 != '\0')) {
      FUN_007d7920(auStack_1c,0,1);
      uVar4 = FUN_00ad6150(auStack_1c);
      FUN_009a1600((int)this);
      FUN_007d7990((int)auStack_1c);
      if ((2 < (int)(aiStack_2c[2] - aiStack_2c[0] & 0xfffffffeU)) && (aiStack_2c[0] != 0)) {
        FUN_004e44e0(aiStack_2c[0]);
      }
      return uVar4;
    }
    if ((2 < (int)(aiStack_2c[2] - aiStack_2c[0] & 0xfffffffeU)) && (aiStack_2c[0] != 0)) {
      FUN_004e44e0(aiStack_2c[0]);
    }
  }
  return 0;
}

