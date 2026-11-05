/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Allocates original Services/RemoteMethodCall record,
   installs object/method/userData and flag bytes at18/19, initializes original virtual interface,
   submits via007d9b10, then releases local reference. Only AL result is meaningful. Caller
   Lot_SetDetailRequested ignores it; exact receiver execution timing belongs to remote-call
   service. */

uchar __cdecl
RemoteMethodCall_SubmitTwoFlagMethod
          (uchar dispatchMode,void *object,void *method,void *userData,uchar flag0,uchar flag1)

{
  uchar uVar1;
  int *this;
  
  this = (int *)FUN_004e4500(0x20,"Services/RemoteMethodCall",0);
  if (this == (int *)0x0) {
    this = (int *)0x0;
  }
  else {
    *this = (int)&PTR_FUN_00fe5800;
    LOCK();
    this[1] = 0;
    UNLOCK();
    this[3] = (int)object;
    this[5] = (int)userData;
    this[4] = (int)method;
    *(uchar *)((int)this + 0x19) = flag1;
    *this = (int)&PTR_FUN_010660fc;
    *(uchar *)(this + 6) = flag0;
    (**(code **)*this)();
  }
  uVar1 = FUN_007d9b10(this,dispatchMode);
  if (this != (int *)0x0) {
    (**(code **)(*this + 4))();
  }
  return uVar1;
}

