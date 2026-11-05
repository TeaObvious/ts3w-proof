/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 COMPLETE136-byte thiscall TWOstackwords RET8void. ECXcomponent savedESI. Firstargument
   consumed as LOWBYTE BL, comparedraw to component+40bit0; equal returnsbefore
   routerquery/mutation. Otherwise828CF0 obtainsrouter; ifnonnull829460 queries owner+4 withliteral1
   and FULLsecondword to capturepriorparticipation statusAL. enabledByte zero clearsbit0
   viaANDbyteFE, ANYnonzero setsbit0 viaORbyte1, preservingotherflags. Routerabsence does NOT
   preventcomponentbit mutation. Ifrouternonnull,944BE0(owner) additionally gatesactive
   notification;8330A0 receivesowner, newactivepredicate, priorparticipation and
   unchangedroutingOptionWord. No stableEAXreturn is inferred. The selectedbody closes enabledflag
   producer meaning, NOTfull router/callback ownership or source notification equivalence. Thisbit
   is logically separate from actual routerregistration and per-area enableflags. Existing host
   known-component disableproducer may supply Boolean0/1; no unsigned byte outside0/1 is synthesized
   by queryprojection. */

void __thiscall
FootprintComponent_SetEnabledAndNotifyRouting(void *this,byte enabledByte,uint routingOptionWord)

{
  byte bVar1;
  char cVar2;
  void *this_00;
  undefined4 uVar3;
  
  bVar1 = enabledByte;
  if (enabledByte == (*(byte *)((int)this + 0x40) & 1)) {
    return;
  }
  this_00 = (void *)thunk_FUN_00835d40();
  if (this_00 != (void *)0x0) {
    uVar3 = FUN_00829460(this_00,*(void **)((int)this + 4),'\x01',(char)routingOptionWord);
    enabledByte = 1;
    if ((char)uVar3 != '\0') goto LAB_0094608e;
  }
  enabledByte = 0;
LAB_0094608e:
  if (bVar1 == 0) {
    *(byte *)((int)this + 0x40) = *(byte *)((int)this + 0x40) & 0xfe;
  }
  else {
    *(byte *)((int)this + 0x40) = *(byte *)((int)this + 0x40) | 1;
  }
  if (this_00 != (void *)0x0) {
    if (((*(byte *)((int)this + 0x40) & 1) == 0) ||
       (uVar3 = FUN_00944be0(*(void **)((int)this + 4)), (char)uVar3 != '\0')) {
      cVar2 = '\0';
    }
    else {
      cVar2 = '\x01';
    }
    FUN_008330a0(this_00,*(void **)((int)this + 4),cVar2,enabledByte,routingOptionWord);
  }
  return;
}

