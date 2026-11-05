/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXmanager register input, no stackargs, void. Visits
   existing objectpointervector+14..+18, dispatches0B nullpayload, selects virtual6C context then
   dispatches15. This notification loop has B-before15, while fresh798D90/ACD130/C71160 path emits15
   then9 thenouterB. They are different call paths, not contradictory universal event order. */

void __fastcall ObjectManager_NotifyExistingMembersInserted(int *param_1)

{
  undefined4 *puVar1;
  void *object;
  void *payload;
  undefined4 *puVar2;
  
  puVar1 = (undefined4 *)param_1[6];
  for (puVar2 = (undefined4 *)param_1[5]; puVar2 != puVar1; puVar2 = puVar2 + 1) {
    object = (void *)*puVar2;
    ObjectEvents_Dispatch(0xb,object,(void *)0x0);
    payload = (void *)(**(code **)(*param_1 + 0x6c))(object);
    ObjectEvents_Dispatch(0x15,object,payload);
  }
  return;
}

