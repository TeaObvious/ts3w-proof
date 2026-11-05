/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162db8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_LoadLayoutAndAddToWindowImpl [assembly=ScriptCore
   token=0x06000DF2; instance: System.UInt64, group: System.UInt32, type: System.UInt32, winHandle:
   System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.UIManager::UIManager_LoadLayoutAndAddToWindowImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,uint param_5)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined4 unaff_retaddr;
  undefined4 uVar7;
  undefined4 uStack_4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_5 & 0xff000000) == 0x30000000) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_5);
    if (piVar2 != (int *)0x0) {
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218);
      if (piVar2 != (int *)0x0) {
        iVar3 = FUN_004afe80();
        if (iVar3 != 0) {
          puVar4 = (undefined4 *)FUN_004e4500(0xc0,"UI/LayoutInstance",0);
          if (puVar4 == (undefined4 *)0x0) {
            puVar4 = (undefined4 *)0x0;
          }
          else {
            puVar4 = FUN_007e7f20(puVar4);
          }
          puVar4[0x29] = puVar4[0x29] + 1;
          FUN_007e94a0(uStack_4,unaff_retaddr,param_2,param_1);
          uVar7 = 3;
          uVar5 = FUN_0054a2a0();
          FUN_00549cc0(puVar4,uVar5,uVar7);
          FUN_007e7f80(puVar4,(undefined4 *)&stack0xffffffe8);
          uVar6 = (**(code **)(*piVar2 + 0x1c))();
          if (0x372d4ff < uVar6) {
            uVar6 = (**(code **)(*piVar2 + 0x1c))();
            if (uVar6 < 0x372d513) {
              FUN_007e80e0((int)puVar4);
            }
          }
          uVar5 = (**(code **)(*piVar1 + 200))(puVar4,0x30);
          return uVar5;
        }
      }
    }
  }
  return 0;
}

