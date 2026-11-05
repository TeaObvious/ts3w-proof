/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01163038 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_EffectListGenericImpl [assembly=ScriptCore token=0x06000E42;
   winHandle: System.UInt32, funcID: System.UInt32, index: System.Int32, effectHandle:
   System.UInt32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Additional complete-body Effects comparison: actual defined body owns 277 Listing
   instructions/704 bytes; existing canonical 736-byte raw window remains bounded beyond that body.
   Selected valid-window Add/Remove query 0x2F009DD0 then window EEEE8218 interface +0x108/+0x10C
   and return 1; clear enumeration uses +0x110 and returns 1 on that admitted path. GetValue invokes
   selected effect interface +0 before global type-0x30 registration. Current Add=count, Clear=0,
   arbitrary nonzero window IDs and dictionary retirement differ. Concrete window-list retention and
   registry removal children remain unproved; no type/body/byte repair is intended. */

int __cdecl ScriptCore.UIManager::UIManager_EffectListGenericImpl(uint param_1,uint param_2)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  int unaff_EBX;
  int iVar7;
  int unaff_ESI;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((((param_1 & 0xff000000) == 0x30000000) &&
      (piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1), piVar2 != (int *)0x0)) &&
     (piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218), piVar2 != (int *)0x0)) {
    switch(unaff_retaddr) {
    case 0:
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_2);
      iVar7 = UiEffect_QueryAttachmentInterface(piVar1);
      if (iVar7 != 0) {
        (**(code **)(*piVar2 + 0x108))(iVar7);
      }
      return 1;
    case 1:
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_2);
      iVar7 = UiEffect_QueryAttachmentInterface(piVar1);
      if (iVar7 != 0) {
        (**(code **)(*piVar2 + 0x10c))(iVar7);
      }
      return 1;
    case 2:
      piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(0);
      while (piVar1 != (int *)0x0) {
        iVar7 = (**(code **)(*piVar1 + 0xc))(0x8f2b630b);
        if ((iVar7 != 0) ||
           (iVar7 = (**(code **)(*piVar1 + 0xc))(0x8239c2f), piVar3 = (int *)0x0, iVar7 != 0)) {
          piVar3 = piVar1;
        }
        piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(piVar1);
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar2 + 0x10c))(piVar3);
        }
      }
      return 1;
    case 3:
      for (piVar3 = (int *)(**(code **)(*piVar2 + 0x110))(0); piVar3 != (int *)0x0;
          piVar3 = (int *)(**(code **)(*piVar2 + 0x110))(piVar3)) {
        puVar4 = (undefined4 *)(**(code **)(*piVar3 + 0xc))(0x8f2b630b);
        if (puVar4 != (undefined4 *)0x0) {
          if (unaff_EBX == unaff_ESI) goto LAB_0077d1f4;
          unaff_ESI = unaff_ESI + 1;
        }
        puVar4 = (undefined4 *)(**(code **)(*piVar3 + 0xc))(0x8239c2f);
        if (puVar4 != (undefined4 *)0x0) {
          if (unaff_EBX == unaff_ESI) {
LAB_0077d1f4:
            (**(code **)*puVar4)();
            iVar7 = (**(code **)(*piVar1 + 200))(puVar4,0x30);
            return iVar7;
          }
          unaff_ESI = unaff_ESI + 1;
        }
      }
      break;
    case 4:
      if ((param_2 & 0xff000000) == 0x30000000) {
        piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_2);
        iVar7 = FUN_0077a0b0(piVar1);
        iVar5 = FUN_0077a0d0(piVar1);
        piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(0);
        if (piVar1 != (int *)0x0) {
          while( true ) {
            iVar6 = (**(code **)(*piVar1 + 0xc))(0x8f2b630b);
            if ((iVar6 != 0) && (iVar6 == iVar7)) {
              return 1;
            }
            iVar6 = (**(code **)(*piVar1 + 0xc))(0x8239c2f);
            if ((iVar6 != 0) && (iVar6 == iVar5)) break;
            piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(piVar1);
            if (piVar1 == (int *)0x0) {
              return 0;
            }
          }
          return 1;
        }
      }
      break;
    case 5:
      piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(0);
      iVar7 = 0;
      for (; piVar1 != (int *)0x0; piVar1 = (int *)(**(code **)(*piVar2 + 0x110))(piVar1)) {
        iVar5 = (**(code **)(*piVar1 + 0xc))(0x8f2b630b);
        iVar6 = (**(code **)(*piVar1 + 0xc))(0x8239c2f);
        if ((iVar5 != 0) || (iVar6 != 0)) {
          iVar7 = iVar7 + 1;
        }
      }
      return iVar7;
    }
  }
  return 0;
}

