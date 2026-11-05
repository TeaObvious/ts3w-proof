/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC 1.67 map/lot detail contract. Sends message to original manager only if lot+c9
   iszero, lot+364 exists and message-manager global exists; virtualslot1c receives
   messageId,message,0,lot+364. No completion acknowledgment. */

void __thiscall Lot_SendManagerMessage(void *this,uint messageId,void *message)

{
  int *piVar1;
  
  if ((*(char *)((int)this + 0xc9) == '\0') && (*(int *)((int)this + 0x364) != 0)) {
    piVar1 = (int *)MessageDispatch_GetCurrent();
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x1c))(messageId,message,0,*(undefined4 *)((int)this + 0x364));
    }
  }
  return;
}

