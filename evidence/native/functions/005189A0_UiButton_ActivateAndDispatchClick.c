/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; native Button activation/Click producer, primary vtableFBC418
   slotA4. Physical thiscall ECX complete Button, no stack arguments, RET; return AL1 regardless of
   Enabled2 admission, upper bits unspecified. Query IWindow this+4 virtual28 flags, test AL2. If
   enabled, type+258 equal2 requests Selected4 inverse low bit using original SHR/NOT DL/AND
   EDX,FFFFFF01 expression (upper argument bits retained); type3 requests Selected4=1. Form first
   event287259F6 using complete+3C command ID or+38 control ID fallback, current IWindow virtual20
   handle and live Selected4 bit; dispatch through interface virtual118. Then reread live type/state
   after first dispatch: ordinary type forms event16 with raw commandID; type2/3 forms event17 with
   raw commandID, zero word and Selected4. Dispatch second event through118. Actual Ghidra C
   aliases/reuses stack event records and may omit second-event assignments: complete original ASM
   is authoritative for these fields and after-callback reads. No delegate return is used to choose
   AL. Original enum meanings independently confirmed from pristine managed Button; downstream event
   recipients/lifetime remain unresolved; concrete masked setter517FB0 consumes only the value low
   byte. */

bool __thiscall UiButton_ActivateAndDispatchClick(void *this)

{
  int *piVar1;
  uint uVar2;
  undefined1 auStack_1c [8];
  undefined4 uStack_14;
  int iStack_10;
  undefined4 uStack_c;
  uint uStack_8;
  
  piVar1 = (int *)((int)this + 4);
  uVar2 = (**(code **)(*(int *)((int)this + 4) + 0x28))();
  if ((uVar2 & 2) != 0) {
    if (*(int *)((int)this + 600) == 2) {
      (**(code **)(*(int *)((int)this + 0x250) + 0x28))
                (4,CONCAT31((uint3)(*(uint *)((int)this + 0x78) >> 10),
                            ~(byte)(*(uint *)((int)this + 0x78) >> 2)) & 0xffffff01);
    }
    else if (*(int *)((int)this + 600) == 3) {
      (**(code **)(*(int *)((int)this + 0x250) + 0x28))(4,1);
    }
    iStack_10 = *(int *)((int)this + 0x3c);
    uStack_14 = 0x287259f6;
    if (iStack_10 == 0) {
      iStack_10 = *(int *)((int)this + 0x38);
    }
    uStack_c = (**(code **)(*piVar1 + 0x20))();
    uStack_8 = *(uint *)((int)this + 0x78) >> 2 & 1;
    (**(code **)(*piVar1 + 0x118))(auStack_1c);
                    /* Analyst: first Click dispatch has returned. Reload Button type here; second
                       event must use post-callback type/state. */
                    /* Analyst: second event record occupies stack+8. Prior branches fill
                       event16/raw commandID, or17/raw commandID/zero/selected. Decompiler may alias
                       away these stores. */
    (**(code **)(*piVar1 + 0x118))(&stack0xffffffc4);
  }
  return true;
}

