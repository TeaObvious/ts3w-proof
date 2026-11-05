/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXlot+1object/RET4 void. Optional Location callsC8AD40
   withlot owner words+48/+4C; sets lotdirty bytes+425/+334 then dispatches object event9
   withlotpayload. Called after successfulACC2B0 byACD130 and before caller798D90 event0B.
   Router/component event9 children remain separate owners. */

void __thiscall Lot_CompleteObjectAdmission(void *this,void *param_1)

{
  void *this_00;
  
  if (param_1 != (void *)0x0) {
    this_00 = Object_GetComponentByMask(param_1,DAT_011edf08);
    if (this_00 != (void *)0x0) {
      FUN_00c8ad40(this_00,*(int *)((int)this + 0x48),*(int *)((int)this + 0x4c));
    }
  }
  *(undefined1 *)((int)this + 0x425) = 1;
  *(undefined1 *)((int)this + 0x334) = 1;
  ObjectEvents_Dispatch(9,param_1,this);
  return;
}

