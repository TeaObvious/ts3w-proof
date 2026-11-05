/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181630 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_InitImpl [assembly=ScriptCore token=0x060000E3; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_DownloadContent__DownloadContent_InitImpl(void)

{
  short sVar1;
  int *piVar2;
  short *psVar3;
  short *psVar4;
  
  piVar2 = (int *)FUN_0072f140();
  if (piVar2 != (int *)0x0) {
    psVar3 = (short *)(**(code **)(*piVar2 + 0x24))();
    sVar1 = *psVar3;
    psVar4 = psVar3;
    while (sVar1 != 0) {
      psVar4 = psVar4 + 1;
      sVar1 = *psVar4;
    }
    FUN_00408d60(&PTR_DAT_01181600,psVar3,psVar3 + ((int)psVar4 - (int)psVar3 >> 1));
    FUN_004ee420((int *)&PTR_DAT_01181600);
    psVar3 = (short *)FUN_0058ac60(L"CustomContent",L"ImportsFolderName",L"Downloads");
    sVar1 = *psVar3;
    psVar4 = psVar3;
    while (sVar1 != 0) {
      psVar4 = psVar4 + 1;
      sVar1 = *psVar4;
    }
    FUN_00408b90(&PTR_DAT_01181600,psVar3,psVar3 + ((int)psVar4 - (int)psVar3 >> 1));
    FUN_004ee420((int *)&PTR_DAT_01181600);
    FUN_004dd2f0((LPCWSTR)PTR_DAT_01181600);
  }
  return;
}

