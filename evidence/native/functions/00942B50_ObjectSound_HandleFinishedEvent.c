/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX component, event ID/sound ID/unused third DWORD RET12.
   Only03A129EE handled. Find first row by low30-bit ID. Retire=false only for a found NONEMPTY NAME
   row with40000000 clear; otherwise true, including absent ID. Always invokes942A00 for matching
   event ID even if row absent. Retained replay rows stay in list; does not invoke replay here. */

void __thiscall
ObjectSound_HandleFinishedEvent(void *this,uint eventId,uint soundId,uint unusedEventWord)

{
  uint *puVar1;
  uint *puVar2;
  
  if (eventId == 0x3a129ee) {
    puVar1 = *(uint **)((int)this + 0x24);
    puVar2 = *(uint **)((int)this + 0x20);
    eventId._0_1_ = 1;
    if (puVar2 != puVar1) {
      do {
        if ((*puVar2 & 0x3fffffff) == soundId) break;
        puVar2 = puVar2 + 5;
      } while (puVar2 != puVar1);
      if (((puVar2 != puVar1) && (puVar2[1] != puVar2[2])) && ((*puVar2 & 0x40000000) == 0)) {
        eventId._0_1_ = 0;
      }
    }
    ObjectSound_FinishAndRetire(this,soundId,(byte)eventId);
  }
  return;
}

