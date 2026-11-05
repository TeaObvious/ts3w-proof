/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162e50 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_GetChildByIndexImpl [assembly=ScriptCore token=0x06000E05;
   winHandle: System.UInt32, index: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_UIManager__UIManager_GetChildByIndexImpl(uint param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  int unaff_ESI;
  undefined4 *unaff_EDI;
  uint uStack_10;
  undefined1 auStack_4 [4];
  
  uStack_10 = 0x77ab08;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x30000000) {
    uStack_10 = param_1;
    piVar3 = (int *)(**(code **)(*piVar2 + 0xcc))();
    if ((piVar3 != (int *)0x0) &&
       (piVar3 = (int *)(**(code **)(*piVar3 + 0xc))(), piVar3 != (int *)0x0)) {
      (**(code **)(*piVar3 + 0xd0))(auStack_4);
      (**(code **)(*piVar3 + 0xd4))(&uStack_10);
      for (; (unaff_EDI != (undefined4 *)0xeeee8218 && (0 < unaff_ESI)); unaff_ESI = unaff_ESI + -1)
      {
        unaff_EDI = (undefined4 *)*unaff_EDI;
      }
      if (((unaff_ESI == 0) && (unaff_EDI != (undefined4 *)0xeeee8218)) &&
         (puVar1 = (undefined4 *)(DAT_00fbba94 + (int)unaff_EDI), puVar1 != (undefined4 *)0x0)) {
        (**(code **)*puVar1)();
        uVar4 = (**(code **)(*piVar2 + 200))(puVar1,0x30);
        return uVar4;
      }
    }
  }
  return 0;
}

