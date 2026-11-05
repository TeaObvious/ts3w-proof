/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; responsibility name, not recovered original symbol or unproved
   key-event classification. Physical thiscall ECX complete Button, three stack DWORDs, RET0C; first
   word is compared signed at CMP2/JL, second word must equal7D8 when first>=2, third unused. First
   word0 returns AL0; other accepted paths AL1. If complete+78 Depressed bit2 is clear, call Button
   interface at+250 virtual28(mask2,value1), then read complete+25C bit1 and invoke primary
   virtualA4 when set. Existing depressed state bypasses both setter and activation. Setter/callback
   may mutate live state; no pure store or upper return bits promised. Concrete primary vtableFBC418
   places this function at slot30. No pointer coordinate, managed delegate Boolean or pass-through
   control set is tested in this body. */

bool __thiscall
UiButton_HandleTriggerPress(void *this,int signedTriggerWord,uint triggerCode,uint opaqueUnusedWord)

{
  if ((signedTriggerWord != 0) && ((signedTriggerWord < 2 || (triggerCode == 0x7d8)))) {
    if ((*(byte *)((int)this + 0x78) & 2) == 0) {
      (**(code **)(*(int *)((int)this + 0x250) + 0x28))(2,1);
      if ((*(byte *)((int)this + 0x25c) & 1) != 0) {
        (**(code **)(*(int *)this + 0xa4))();
      }
    }
    return true;
  }
  return false;
}

