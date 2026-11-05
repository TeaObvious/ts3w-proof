/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 floor geometry preparation comparison.
   Constructs a FloorVisibility undo helper, binds the passed lot and, only when the second argument
   is zero, iterates its rectangle and sends mask0x0F tile records to D23DE0 with desired state
   (fifth argument low byte == zero). Queues the helper and performs the visible local release path.
   Physical cdecl six DWORD stack slots, caller cleanup; both stored body ranges are complete and
   six intervening bytes are unowned alignment. Caller-dependent admission, rectangle conversion,
   native undo/lifetime and pool/fountain marker type/level interpretation are not fully
   established. The current type3/6 and level-minus1 filter remains a project proxy.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

void __cdecl
DeckPlacement_QueueFloorVisibilityRectangle
          (undefined4 param_1,uint param_2,undefined2 *param_3,char *param_4,char param_5,
          void *param_6)

{
  int iVar1;
  bool bVar2;
  bool bVar3;
  undefined4 *puVar4;
  int *this;
  undefined3 *puVar5;
  undefined1 auStack_c [12];
  
  puVar4 = (undefined4 *)
           FUN_004e4500(100,"UserTool/DeckFoundationPlacementHelper/UserToolUndoableFloorVisibility"
                        ,0);
  if (puVar4 == (undefined4 *)0x0) {
    this = (int *)0x0;
  }
  else {
    this = FUN_00d23be0(puVar4);
    if (this != (int *)0x0) {
      this[1] = this[1] + 1;
    }
  }
  (**(code **)(*this + 4))();
  FUN_00d22a90(this,param_1);
  if (param_2 == 0) {
    param_3 = (undefined2 *)CONCAT22(CONCAT11(param_3._3_1_,*(undefined1 *)(param_3 + 1)),*param_3);
    param_2 = (uint)CONCAT12(param_4[2],CONCAT11(param_4[1] + -1,*param_4 + -1));
    FUN_00af6450(auStack_c,(undefined2 *)&param_3,(undefined2 *)&param_2);
    bVar2 = FUN_00af6490((int)auStack_c);
    if (!bVar2) {
      bVar2 = param_5 == '\0';
      do {
        puVar5 = (undefined3 *)FUN_00af64e0((int)auStack_c);
        param_4 = (char *)CONCAT13(0xf,*puVar5);
        FloorVisibility_ApplyMaskedStateAndAppendRecords(this,(undefined3 *)&param_4,bVar2);
        FUN_00af6610(auStack_c);
        bVar3 = FUN_00af6490((int)auStack_c);
      } while (!bVar3);
    }
  }
  FUN_00d1b270(param_6,this);
  iVar1 = this[1];
  this[1] = iVar1 + -1;
  if (iVar1 + -1 == 0) {
    this[1] = 1;
    (**(code **)*this)(1);
  }
  return;
}

