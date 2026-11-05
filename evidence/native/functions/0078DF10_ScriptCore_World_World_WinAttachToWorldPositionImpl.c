/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163928 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_WinAttachToWorldPositionImpl [assembly=ScriptCore token=0x06000829;
   winHandle: System.UInt32, pos: Sims3.SimIFace.Vector3, effect2DOffset: Sims3.SimIFace.Vector2,
   mapTag: System.Boolean, simThread: System.Boolean, stickToScreenBounds: System.Boolean, round:
   System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_WinAttachToWorldPositionImpl
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined1 param_5,char param_6,undefined1 param_7,undefined1 param_8)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  uint *puVar4;
  int *piVar5;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  undefined4 unaff_retaddr;
  undefined4 uVar6;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))();
  if (piVar1 != (int *)0x0) {
    uVar6 = 0xeeee8218;
    piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
    if (piVar1 != (int *)0x0) {
      if (param_6 == '\0') {
        puVar4 = AllocateWithAllocatorHeader(0x60,0x10,"UI/BillboardRenderer",(int *)0x0);
        if (puVar4 == (uint *)0x0) {
          piVar2 = (int *)0x0;
        }
        else {
          piVar2 = (int *)FUN_007dca80(puVar4);
          if (piVar2 != (int *)0x0) {
            (**(code **)*piVar2)();
          }
        }
        FUN_007dc990(piVar2,'\x01');
        FUN_007dc9d0(piVar2,unaff_retaddr,param_1,param_2);
        FUN_007dca30(piVar2,param_3,param_4);
        FUN_007dc9b0(piVar2,param_5);
        *(undefined1 *)((int)piVar2 + 0x33) = param_7;
        FUN_007dc9c0(piVar2,param_8);
        (**(code **)(*piVar1 + 0x88))(piVar2);
                    /* WARNING: Could not recover jumptable at 0x0078e131. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        (**(code **)(*piVar2 + 4))();
        return;
      }
      piVar2 = (int *)(**(code **)(*piVar1 + 0x110))();
      while (piVar2 != (int *)0x0) {
        piVar5 = (int *)0x0;
        if ((piVar2 != (int *)0x0) && (iVar3 = (**(code **)(*piVar2 + 0xc))(0x486526a), iVar3 != 0))
        {
          piVar5 = piVar2;
        }
        piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(piVar2);
        if (piVar5 != (int *)0x0) {
          (**(code **)(*piVar1 + 0x10c))(piVar5);
        }
      }
      puVar4 = AllocateWithAllocatorHeader(0xa0,0x10,"UI/BillboardEffect",(int *)0x0);
      if (puVar4 == (uint *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = (int *)FUN_007dc820(puVar4);
        if (piVar2 != (int *)0x0) {
          (**(code **)*piVar2)();
        }
      }
      (**(code **)(*piVar2 + 0x9c))(0,0);
      (**(code **)(*piVar2 + 0xa0))(1);
      (**(code **)(*piVar2 + 0xa4))(unaff_ESI,uVar6,unaff_EDI);
      (**(code **)(*piVar2 + 0xa8))(unaff_ESI,uVar6);
      FUN_007dc090(piVar2,(char)unaff_ESI);
      FUN_007dc0e0(piVar2,(char)unaff_EDI,0);
      FUN_007dc0d0(piVar2,(char)param_1);
      (**(code **)(*piVar1 + 0x108))(piVar2);
      (**(code **)(*piVar2 + 0x60))(piVar1);
                    /* WARNING: Could not recover jumptable at 0x0078e082. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar2 + 4))();
      return;
    }
  }
  return;
}

