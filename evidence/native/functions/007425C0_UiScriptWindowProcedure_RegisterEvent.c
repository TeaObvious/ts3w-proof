/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX procedure, one stack word/RET 4, AL boolean. Insert
   event ID into set +0x10 via6B5BC0. Duplicate insertion returnsAL 0, no duplicate delegate. New ID
   obtains category mask50E990; if not already represented OR into mask +0x30 then invoke attached
   IWindow+34 virtual 0x108(procedure) to update procedure admission. ReturnAL 1. Event0 set
   insertion is not rejected; category0 contributes no mask. Tick 12 maps2 via actual selected
   table. */

bool __thiscall UiScriptWindowProcedure_RegisterEvent(void *this,uint eventType)

{
  uint uVar1;
  undefined4 local_c [2];
  char local_4;
  
  FUN_006b5bc0((void *)((int)this + 0x10),local_c,&eventType);
  if (local_4 == '\0') {
    return false;
  }
  uVar1 = UiEventType_GetCategoryMask(eventType);
  if ((uVar1 & *(uint *)((int)this + 0x30)) == 0) {
    *(uint *)((int)this + 0x30) = *(uint *)((int)this + 0x30) | uVar1;
    (**(code **)(**(int **)((int)this + 0x34) + 0x108))(this);
  }
  return true;
}

