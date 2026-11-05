/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. If requested byte differs from lot+c1 and lot+c9
   iszero, store+c1 before submitting remote method work. True queues00ac01e0 via00abd400 with two
   zero flags; false queues00ab3310 via00abd490 with zero flag. Sends message0421fefd with the
   requested byte through lot manager after enqueue; it does not await resource completion or
   propagate the remote-call result. If message allocation returned null the original dereferences
   it; no graceful allocation-failure promise. */

void __thiscall Lot_SetDetailRequested(void *this,uchar requested)

{
  int *message;
  
  if ((*(uchar *)((int)this + 0xc1) != requested) && (*(char *)((int)this + 0xc9) == '\0')) {
    *(uchar *)((int)this + 0xc1) = requested;
    if (requested == '\0') {
      RemoteMethodCall_SubmitOneFlagMethod
                ('\x01',this,Lot_DispatchDetailDemotionToObjects,(void *)0x0,'\0');
    }
    else {
      RemoteMethodCall_SubmitTwoFlagMethod
                ('\x01',this,Lot_ApplyDetailRequestToObjects,(void *)0x0,'\0','\0');
    }
    message = FUN_00adf150();
    if (message == (int *)0x0) {
      message = (int *)0x0;
    }
    else {
      *message = (int)&PTR_FUN_01065f8c;
      LOCK();
      message[1] = 0;
      UNLOCK();
      *message = (int)&PTR_FUN_01065f8c;
      (**(code **)(*message + 4))();
    }
    *(uchar *)(message + 2) = requested;
    Lot_SendManagerMessage(this,0x421fefd,message);
    (**(code **)(*message + 8))();
  }
  return;
}

