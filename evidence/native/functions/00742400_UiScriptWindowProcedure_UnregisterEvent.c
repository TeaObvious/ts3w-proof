/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX procedure, one stack word/RET 4; old fastcall/no-stack
   metadata wrong. Lookup event set +0x10, absent returnsAL 0. Erase found node then if set count
   +0x1C==0 returnAL 1 (caller removes procedure). Otherwise enumerate remaining IDs, OR exact50E990
   category masks, store+30 and invoke attached IWindow virtual 0x108(procedure), then returnAL 0.
   Only low byte is boolean, not arbitrary full EAX. */

bool __thiscall UiScriptWindowProcedure_UnregisterEvent(void *this,uint eventType)

{
  void *this_00;
  uint uVar1;
  uint uVar2;
  uint *local_10;
  int *local_c;
  uint *local_8 [2];
  
  this_00 = (void *)((int)this + 0x10);
  FUN_008b26c0(this_00,&local_10,&eventType);
  if (local_10 != *(uint **)(*(int *)((int)this + 0x14) + *(int *)((int)this + 0x18) * 4)) {
    FUN_00ae02b0(this_00,(int *)local_8,(int)local_10,local_c);
    if (*(int *)((int)this + 0x1c) == 0) {
      return true;
    }
    uVar2 = 0;
    PickCandidateMap_Begin(this_00,&local_10);
    local_8[0] = *(uint **)(*(int *)((int)this + 0x14) + *(int *)((int)this + 0x18) * 4);
    if (local_10 != local_8[0]) {
      do {
        uVar1 = UiEventType_GetCategoryMask(*local_10);
        uVar2 = uVar2 | uVar1;
        for (local_10 = (uint *)local_10[1]; local_10 == (uint *)0x0; local_10 = (uint *)*local_10)
        {
          local_10 = (uint *)(local_c + 1);
          local_c = local_c + 1;
        }
      } while (local_10 != local_8[0]);
    }
    *(uint *)((int)this + 0x30) = uVar2;
    (**(code **)(**(int **)((int)this + 0x34) + 0x108))(this);
  }
  return false;
}

