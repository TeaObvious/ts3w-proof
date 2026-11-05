/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161588 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetSharingServiceStatus [assembly=ScriptCore
   token=0x06000630; service: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_OnlineFeatures__OnlineFeaturesHost_GetSharingServiceStatus(uint param_1)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  
  if (param_1 == 0) {
    return 0;
  }
  uVar3 = 0;
  if ((param_1 & 0xffff0000) != 0) {
    uVar3 = 0x10;
    param_1 = param_1 >> 0x10;
  }
  if ((param_1 & 0xff00) != 0) {
    uVar3 = uVar3 + 8;
    param_1 = param_1 >> 8;
  }
  if ((param_1 & 0xf0) != 0) {
    uVar3 = uVar3 + 4;
    param_1 = param_1 >> 4;
  }
  if ((param_1 & 0xc) != 0) {
    uVar3 = uVar3 + 2;
    param_1 = param_1 >> 2;
  }
  if ((param_1 & 2) != 0) {
    uVar3 = uVar3 + 1;
  }
  param_1 = uVar3;
  EnterCriticalSection((LPCRITICAL_SECTION)&DAT_011d5008);
  if (((DAT_011d5000 != 0) && (*(int *)(DAT_011d5000 + 0x30) != 0)) &&
     (uVar3 < *(uint *)(DAT_011d5000 + 0x1c))) {
    piVar2 = FUN_00749470((void *)(DAT_011d5000 + 8),&param_1);
    iVar1 = piVar2[4];
    LeaveCriticalSection((LPCRITICAL_SECTION)&DAT_011d5008);
    return iVar1;
  }
  LeaveCriticalSection((LPCRITICAL_SECTION)&DAT_011d5008);
  return 0;
}

