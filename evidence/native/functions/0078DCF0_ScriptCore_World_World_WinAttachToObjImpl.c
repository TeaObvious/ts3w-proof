/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Verified PC 1.67 registration table at 0x01163918 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_WinAttachToObjImpl [assembly=ScriptCore token=0x06000824; winHandle:
   System.UInt32, scriptHandle: System.UInt64, effect3DOffset: Sims3.SimIFace.Vector3,
   effect2DOffset: Sims3.SimIFace.Vector2, mapTag: System.Boolean, simThread: System.Boolean,
   stickToScreenBounds: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static PC 1.67 context contract: resolves the window interface and attaches an object-linked
   effect when simThread is nonzero, otherwise a renderer. Physical inputs are eleven DWORD slots:
   window handle, UInt64 script handle, Vector3/Vector2 offsets and three low-byte flags. The seven
   logical managed arguments are not the current nine generated formals. Null resolved
   window/interface returns; the host itself has no local null guard.
   
   The effect branch removes matching queried effects, installs the new attachment and tail-releases
   its local reference; the renderer branch attaches then tail-transfers through its +4h slot, whose
   counter protocol is not reviewed here. Allocation-failure paths continue into null dereferences
   rather than local recovery. Concrete retention/teardown, thread safety and allocator policy
   remain open; simThread is a branch selector, not proved thread affinity. The one-byte stored
   singleton is not the separately checked 529-byte reachable context. Preserve current metadata; C
   omits/shifts actual arguments and cannot establish the ABI. */

void ScriptCore_World__World_WinAttachToObjImpl
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined1 param_7,char param_8,
               undefined1 param_9)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  uint *puVar4;
  int *piVar5;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))();
  if ((piVar1 == (int *)0x0) ||
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218), piVar1 == (int *)0x0)) {
    return;
  }
  if (param_8 == '\0') {
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
    FUN_007dc970(piVar2,unaff_retaddr,param_1);
    FUN_007dc9d0(piVar2,param_2,param_3,param_4);
    FUN_007dca30(piVar2,param_5,param_6);
    FUN_007dc9b0(piVar2,param_7);
    *(undefined1 *)((int)piVar2 + 0x33) = param_9;
    (**(code **)(*piVar1 + 0x88))(piVar2);
                    /* WARNING: Could not recover jumptable at 0x0078def9. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar2 + 4))();
    return;
  }
  piVar2 = (int *)(**(code **)(*piVar1 + 0x110))();
  while (piVar2 != (int *)0x0) {
    piVar5 = (int *)0x0;
    if ((piVar2 != (int *)0x0) && (iVar3 = (**(code **)(*piVar2 + 0xc))(0x486526a), iVar3 != 0)) {
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
  (**(code **)(*piVar2 + 0x9c))(param_1,unaff_retaddr);
  (**(code **)(*piVar2 + 0xa4))(param_1,unaff_retaddr,param_1);
  (**(code **)(*piVar2 + 0xa8))(param_1,unaff_retaddr);
  FUN_007dc090(piVar2,(char)param_1);
  FUN_007dc0e0(piVar2,(char)param_1,0);
  (**(code **)(*piVar1 + 0x108))(piVar2);
  (**(code **)(*piVar2 + 0x60))(piVar1);
                    /* WARNING: Could not recover jumptable at 0x0078de4e. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar2 + 4))();
  return;
}

