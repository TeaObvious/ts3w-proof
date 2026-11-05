/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC 1.67 map/lot detail contract. Allocates original Services/RemoteMethodCall record
   with one flag byte, submits via007d9b10 and releases local reference. Only AL result is
   meaningful. Caller ignores submission result; resource completion is not returned. */

uchar __cdecl
RemoteMethodCall_SubmitOneFlagMethod
          (uchar dispatchMode,void *object,void *method,void *userData,uchar flag0)

{
  uchar uVar1;
  int *this;
  
  this = (int *)FUN_004e4500(0x20,"Services/RemoteMethodCall",0);
  if (this == (int *)0x0) {
    this = (int *)0x0;
  }
  else {
    *this = (int)&PTR_AddAtomicReference_00fe5800;
    LOCK();
    this[1] = 0;
    UNLOCK();
    this[3] = (int)object;
    this[4] = (int)method;
    this[5] = (int)userData;
    *this = (int)&PTR_AddAtomicReference_01066110;
    *(uchar *)(this + 6) = flag0;
    (**(code **)*this)();
  }
  uVar1 = RemoteMethodCall_DispatchOrQueueJob(this,dispatchMode);
  if (this != (int *)0x0) {
    (**(code **)(*this + 4))();
  }
  return uVar1;
}

