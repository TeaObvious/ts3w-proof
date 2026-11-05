/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Physical ECX complete text editor, no stack args RET;
   return AL from mutable payload bool initialized1. Build9B1552DA validation event referencing
   current text start and UTF16 length computed by signed SAR1 of end-start. Calls IWindow+4
   virtual14 service lookup; when service exists call it again then service
   virtual10(IWindow,IWindow,event,0). Service can mutate payload validation byte, returned AL. This
   validation sees tentative native text already applied by5424A0, unlike current pre-publication
   validation of candidate string. */

bool __thiscall UiTextEdit_ValidateCurrentText(void *this)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int local_28;
  int local_24;
  undefined1 local_20;
  undefined1 auStack_1c [8];
  undefined4 local_14;
  undefined1 *local_4;
  
  local_4 = (undefined1 *)&local_28;
  local_28 = *(int *)((int)this + 0x7c);
  local_24 = *(int *)((int)this + 0x80) - local_28 >> 1;
  piVar1 = (int *)((int)this + 4);
  local_14 = 0x9b1552da;
  local_20 = 1;
  iVar2 = (**(code **)(*piVar1 + 0x14))();
  if (iVar2 != 0) {
    piVar3 = (int *)(**(code **)(*piVar1 + 0x14))();
    (**(code **)(*piVar3 + 0x10))(piVar1,piVar1,auStack_1c,0);
  }
  return (bool)local_20;
}

