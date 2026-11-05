/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. ECX=dispatcher; one command pointer; RET 4, void. Enters
   critical section at +D0 and uses block storage at +F4. If next(+18)+0x50 equals block end(+20),
   calls 594760; otherwise advances next by 0x50 and copies to a nonnull old slot through 593E70.
   Leaves the critical section on ordinary paths. No renderer execution here; exception/allocation
   rollback and command-drain ownership remain unexpanded. */

void __thiscall RenderCommandDispatcher_Enqueue(void *this,byte *command)

{
  LPCRITICAL_SECTION lpCriticalSection;
  void *this_00;
  void *this_01;
  
  lpCriticalSection = (LPCRITICAL_SECTION)((int)this + 0xd0);
  EnterCriticalSection(lpCriticalSection);
  this_00 = *(void **)((int)this + 0xf4);
  this_01 = *(void **)((int)this_00 + 0x18);
  if ((int)this_01 + 0x50 == *(int *)((int)this_00 + 0x20)) {
    RenderCommandBlocks_AppendBoundary(this_00,command);
  }
  else {
    *(int *)((int)this_00 + 0x18) = (int)this_01 + 0x50;
    if (this_01 != (void *)0x0) {
      RenderCommand_CopyRecord(this_01,command);
      LeaveCriticalSection(lpCriticalSection);
      return;
    }
  }
  LeaveCriticalSection(lpCriticalSection);
  return;
}

