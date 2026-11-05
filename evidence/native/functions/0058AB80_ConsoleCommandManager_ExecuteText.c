/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 console text submission; descriptive analyst name, not an EA symbol. Actual
   ECXmanager plus one physical text stack word, two RET4 exits. AL is external success; no type/ABI
   change.
   
   Requests E0 bytes through the actual SIX physical allocator words (stored abbreviated allocator
   prototype is not proof of fewer arguments), constructs0058A480 withFFFFFFFF, invokes command
   virtual+4, parses0058A690 and requires frame+4!=-1. On that path emits00892A80 with words4/0E and
   original text, calls0058A2A0 and checks its result EXACTLY1. Selected exits invoke command
   virtual+8 before returning AL1/AL0; allocation/unresolved-name paths retain their actual cleanup
   branches. The semantics of constructor/allocation/event and virtual implementation children are
   not generalized here.
   
   0058A2A0 explicitly returns1 after admitted dispatcher invocation regardless that callback's
   returned value. Therefore this method does not expose arbitrary original managed handler Int32
   directly; absent dispatcher returns its previous frame status, whose constructor initialization
   requires separate evidence. No blanket synchronous execution, backend/thread completion or
   constant absent-failure claim. No original bytes changed. */

undefined4 __thiscall ConsoleCommandManager_ExecuteText(void *this,short *param_1)

{
  short *psVar1;
  void *this_00;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined1 *puStack_4;
  
  puStack_4 = this;
  this_00 = (void *)FUN_004e4500(0xe0,"Scripting/Command/Command",0);
  if (this_00 == (void *)0x0) {
    piVar2 = (int *)0x0;
  }
  else {
    piVar2 = (int *)FUN_0058a480(this_00,0xffffffff);
  }
  uVar5 = 0;
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 4))();
    psVar1 = param_1;
    ConsoleCommandManager_ParseText(this,(char *)param_1,(int)piVar2);
    if (piVar2[1] != -1) {
      param_1 = (short *)&DAT_0000000e;
      puStack_4 = &DAT_00000004;
      FUN_00892a80((int *)&puStack_4,(int *)&param_1,psVar1);
      iVar3 = ConsoleCommandManager_DispatchResolved(this,(uint)piVar2);
      if (iVar3 == 1) {
        uVar4 = (**(code **)(*piVar2 + 8))();
        return CONCAT31((int3)((uint)uVar4 >> 8),1);
      }
    }
    uVar5 = (**(code **)(*piVar2 + 8))();
  }
  return uVar5 & 0xffffff00;
}

