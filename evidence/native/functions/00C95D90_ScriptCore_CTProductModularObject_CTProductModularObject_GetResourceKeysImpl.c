/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011877c8 (original PC 1.67 TS3W.exe).
   ScriptCore.CTProductModularObject::CTProductModularObject_GetResourceKeysImpl
   [assembly=ScriptCore token=0x06000CE5; handle: System.UInt32, pKeyTable: System.Byte[]&;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CTProductModularObject::CTProductModularObject_GetResourceKeysImpl(uint param_1)

{
  char cVar1;
  int *piVar2;
  void *this;
  undefined4 uVar3;
  int unaff_ESI;
  size_t sVar4;
  int iStack_54;
  undefined1 auStack_48 [20];
  int iStack_34;
  undefined **ppuStack_30;
  undefined4 *puStack_2c;
  
  if ((((param_1 & 0xff000000) == 0x54000000) &&
      (piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC(), piVar2 != (int *)0x0)) &&
     (this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1), this != (void *)0x0)) {
    FUN_007d9500(&stack0xffffffa8,(undefined4 *)&stack0x00000000);
    FUN_00c95a50(this,&stack0xffffffa8);
    sVar4 = (iStack_54 - unaff_ESI >> 4) * 0x10 + 4;
    FUN_004df4c0(&ppuStack_30,(void *)0x0,sVar4,'\0',1,(int *)0x0,
                 "Scratch/CTModularObjectHost/KeyTable");
    FUN_007d93e0(auStack_48,(int *)&ppuStack_30,1);
    cVar1 = FUN_007d8a00(&stack0xffffffa8,(int)auStack_48);
    if (cVar1 == '\0') {
      FUN_007d7990((int)auStack_48);
    }
    else {
      (**(code **)(*piVar2 + 0x80))(param_1,sVar4);
      if (iStack_34 == 0) {
        uVar3 = 0;
      }
      else {
        uVar3 = *(undefined4 *)(iStack_34 + 8);
      }
      (**(code **)(*piVar2 + 0x98))(param_1,uVar3,0,sVar4);
      FUN_007d7990((int)auStack_48);
    }
    ppuStack_30 = &PTR_FUN_00fb6c00;
    if (puStack_2c != (undefined4 *)0x0) {
      FUN_004dee00(puStack_2c);
    }
    ppuStack_30 = &PTR_LAB_00faaa04;
    if (unaff_ESI != 0) {
      FUN_004e44e0(unaff_ESI);
    }
  }
  return;
}

