/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163b88 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_DesignModeSwap_SetNewPatternImpl [assembly=ScriptCore token=0x06000873;
   handle: System.UInt32, variableHash: System.UInt32, data: System.Byte[]; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_DesignModeSwap_SetNewPatternImpl
               (uint param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  uint in_EAX;
  int *piVar2;
  uint uVar3;
  void *this;
  undefined4 unaff_EBX;
  int unaff_EDI;
  int unaff_retaddr;
  void *pvStack_4;
  
  iVar1 = param_3;
  if (param_3 == 0) {
    return in_EAX & 0xffffff00;
  }
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar3 = param_1 & 0xff000000;
  if (uVar3 == 0x45000000) {
    param_3 = 0;
    uVar3 = (**(code **)(*piVar2 + 0x70))(iVar1,&param_3);
    if ((unaff_retaddr != 0) && (unaff_EDI != 0)) {
      this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
      uVar3 = 0;
      if (this != (void *)0x0) {
        uVar3 = DesignSwap_UploadPatternResource(this,unaff_EBX,pvStack_4,(size_t)&pvStack_4);
        return uVar3;
      }
    }
  }
  return uVar3 & 0xffffff00;
}

