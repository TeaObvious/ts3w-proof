/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x005ab3c1) */
/* Verified PC 1.67 registration table at 0x01156810 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_TextSearchLookupKeywordResultImpl [assembly=ScriptCore
   token=0x0600038E; handle: System.UInt32, searchHandle: System.UInt32, index: System.UInt32;
   return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.CASUtils::CASUtils_TextSearchLookupKeywordResultImpl(uint param_1,uint param_2)

{
  int *piVar1;
  void *this;
  short *psVar2;
  undefined **ppuStack_2c;
  char *pcStack_28;
  undefined **appuStack_24 [2];
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  undefined4 uStack_8;
  
  if ((param_1 & 0xff000000) != 0x35000000) {
    return 0;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    ppuStack_2c = (undefined **)0x0;
    pcStack_28 = "CAS/Host/varString";
    psVar2 = (short *)FUN_005aad80(this,param_1,param_2);
    FUN_0040b590(&stack0xffffffcc,psVar2);
    appuStack_24[0] = &PTR_FUN_0100886c;
    uStack_1a = 0x13;
    uStack_1c = 0xb;
    FUN_004f59c0(appuStack_24,0x13,9,&stack0xffffffcc,0x10,1);
    (**(code **)(*piVar1 + 0x50))(appuStack_24,&stack0x00000000);
    ppuStack_2c = &PTR_FUN_00fba6f4;
    if (((uint)appuStack_24[0] & 4) != 0) {
      FUN_004f5760(&ppuStack_2c,'\0');
    }
    return uStack_8;
  }
  return 0;
}

