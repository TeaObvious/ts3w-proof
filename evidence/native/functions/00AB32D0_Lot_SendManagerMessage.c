/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Sends message to original manager only if lot+c9
   iszero, lot+364 exists and message-manager global exists; virtualslot1c receives
   messageId,message,0,lot+364. No completion acknowledgment. */

void __thiscall Lot_SendManagerMessage(void *this,uint messageId,void *message)

{
  int *piVar1;
  
  if ((*(char *)((int)this + 0xc9) == '\0') && (*(int *)((int)this + 0x364) != 0)) {
    piVar1 = (int *)FUN_0044c4f0();
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x1c))(messageId,message,0,*(undefined4 *)((int)this + 0x364));
    }
  }
  return;
}

