/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; generic native IWindow control-state word publication used by Button
   interface virtual5C. Physical thiscall ECX IWindow=complete+4, one DWORD state, RET4, void. Read
   old interface+74=complete+78 and compare exact DWORD; unchanged returns without notification.
   Changed stores new state BEFORE event12 through IWindow virtual118; event payload includes
   supplied new and captured old state. Only AFTER callback read interface+200=complete+204; nonzero
   invokes IWindow virtual90 invalidation. Callback may alter live state or invalidation field; no
   rollback, post-callback equality recheck or pure-store assumption. Unspecified event-prefix
   fields and concrete recipients are not invented. */

void __thiscall UiWindow_PublishControlStateWord(void *this,uint newState)

{
  undefined1 local_1c [8];
  undefined4 local_14;
  uint local_10;
  uint local_c;
  
  local_c = *(uint *)((int)this + 0x74);
  if (newState != local_c) {
    *(uint *)((int)this + 0x74) = newState;
    local_10 = newState;
    local_14 = 0x12;
    (**(code **)(*(int *)this + 0x118))(local_1c);
    if (*(int *)((int)this + 0x200) != 0) {
      (**(code **)(*(int *)this + 0x90))();
    }
  }
  return;
}

