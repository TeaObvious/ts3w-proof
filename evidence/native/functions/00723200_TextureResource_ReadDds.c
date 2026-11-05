/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall resource; obtains source stream through context
   virtual+18, resets embedded texture at+28, copies two option words plus extra word and invokes
   legacy reader. Success atomically publishes resource+60=1. Accounting updates texture
   bytes+68hex; failure path and readiness/lifetime beyond this leaf need callers. Does not publish
   a world-level loading barrier. */

bool __thiscall
TextureResource_ReadDds(void *this,int *param_1,int *param_2,char param_3,undefined4 param_4)

{
  bool bVar1;
  void *stream;
  int iVar2;
  int iStack_c;
  int iStack_8;
  undefined4 uStack_4;
  
  stream = (void *)(**(code **)(*param_1 + 0x18))();
  FUN_0061a1d0((int)this + 0x28U);
  iStack_c = *param_2;
  iStack_8 = param_2[1];
  uStack_4 = param_4;
  bVar1 = DdsTexture_ReadLegacyHeaderAndPayload
                    ((void *)(-(uint)(this != (void *)0x0) & (int)this + 0x28U),stream,&iStack_c,
                     param_3);
  if (bVar1) {
    LOCK();
    *(undefined4 *)((int)this + 0x60) = 1;
    UNLOCK();
  }
  if (*(int *)((int)this + 0x60) == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = (**(code **)(*(int *)((int)this + 0x30) + 8))();
  }
  FUN_00731be0(this,iVar2 + 0x68);
  return bVar1;
}

