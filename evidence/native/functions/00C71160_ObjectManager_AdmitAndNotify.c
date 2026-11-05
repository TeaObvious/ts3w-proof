/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXmanager+1object stackDWORD/RET4 ALBoolean.
   Existingmanager query68F130 rejects duplicate admission. Sets objectmanager via934250, increments
   owned reference atomically, appends rawpointervector, obtains context via virtual6C and
   dispatches event15 with that context. LowAL1 even if upperEAX decompiler concat is undefined.
   Selected loaded-lot vtable74 points here and6C pointsAB59B0. */

uint __thiscall ObjectManager_AdmitAndNotify(void *this,void *param_1)

{
  undefined4 *puVar1;
  uint uVar2;
  void *payload;
  undefined3 extraout_var;
  void *this_00;
  
  this_00 = param_1;
  uVar2 = FUN_0068f130((int)param_1);
  if (uVar2 != 0) {
    return uVar2 & 0xffffff00;
  }
  FUN_00934250(this_00,this);
  LOCK();
  *(int *)((int)this_00 + 4) = *(int *)((int)this_00 + 4) + 1;
  UNLOCK();
  puVar1 = *(undefined4 **)((int)this + 0x18);
  if (puVar1 < *(undefined4 **)((int)this + 0x1c)) {
    *(undefined4 **)((int)this + 0x18) = puVar1 + 1;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = this_00;
    }
  }
  else {
    FUN_00982420((void *)((int)this + 0x14),puVar1,&param_1);
    this_00 = param_1;
  }
  payload = (void *)(**(code **)(*(int *)this + 0x6c))(this_00);
  ObjectEvents_Dispatch(0x15,this_00,payload);
  return CONCAT31(extraout_var,1);
}

