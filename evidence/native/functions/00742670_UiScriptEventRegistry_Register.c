/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Physical ECX registry, two words / RET 8, only AL boolean.
   Registry at +4 maps actual IWindow to one script procedure. Missing window allocates0x40 bytes
   via5050B0 then742290(registry,Host), acquires procedure, inserts key/procedure before window
   virtual 0x108 attachment. Failed insertion releases procedure and returnsAL 0. Successful
   attachment leads to7425C0(procedure,eventType). Existing entry reuses its procedure. Allocation
   failure remains actual null path, not invented safe native policy; no zero-event reject. The new
   event insertion result is returned, duplicate false. */

bool __thiscall UiScriptEventRegistry_Register(void *this,void *windowInterface,uint eventType)

{
  bool bVar1;
  uint *this_00;
  int *piVar2;
  void *pvVar3;
  void *local_14;
  int *local_10;
  void *local_c;
  undefined4 uStack_8;
  char cStack_4;
  
  UInt32PairMap_Find((void *)((int)this + 4),&local_14,(uint *)&windowInterface);
  pvVar3 = local_14;
  if (local_14 == *(void **)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) {
    this_00 = FUN_005050b0(0x40,4,"Scripting/EventHook",(int *)0x0);
    if (this_00 == (uint *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = UiScriptWindowProcedure_Initialize(this_00,this,*(void **)this);
      if (piVar2 != (int *)0x0) {
        (**(code **)*piVar2)();
      }
    }
    pvVar3 = windowInterface;
    windowInterface = (void *)((uint)windowInterface & 0xffffff00);
    local_14 = pvVar3;
    local_10 = piVar2;
    UInt32PairMap_InsertUnique
              ((void *)((int)this + 4),&local_c,(uint *)&local_14,(uint)windowInterface);
    if (cStack_4 == '\0') {
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
      return false;
    }
    (**(code **)(*(int *)pvVar3 + 0x108))(piVar2);
    local_10 = (int *)uStack_8;
    pvVar3 = local_c;
  }
  bVar1 = UiScriptWindowProcedure_RegisterEvent(*(void **)((int)pvVar3 + 4),eventType);
  return bVar1;
}

