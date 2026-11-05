/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Requires nonnull stream and object, then calls the actual compositor envelope writer adapter.
   Only AL is a verified success flag. No stored return-prototype change is proposed. */

uint __cdecl
TextureCompositor_WriteObjectEnvelope(int *param_1,void *param_2,undefined4 param_3,int param_4)

{
  uint in_EAX;
  uint uVar1;
  undefined **local_8;
  int local_4;
  
  if ((param_1 != (int *)0x0) && (param_2 != (void *)0x0)) {
    local_4 = param_4;
    local_8 = &PTR_LAB_00fe7748;
    uVar1 = TextureCompositor_WriteEnvelopeWithKeyList
                      (param_2,param_1,(undefined ***)(-(uint)(param_4 != 0) & (uint)&local_8));
    return uVar1;
  }
  return in_EAX & 0xffffff00;
}

