/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Complete 11-instruction/35-byte query operation on the object constructed by observed NewEffect
   input kind 6. Requested interface ID 0x08239C2F returns whole object+0x10 when nonnull, else
   zero; other IDs tail-dispatch unchanged to 00504B80. This interface ID is not managed
   BiStateController class ID 0x08239C4E. Other-ID fallback semantics and a native-kind to
   managed-class identity are not proved. */

void * __thiscall UiEffectKind6_QueryInterface(void *this,int param_1)

{
  void *pvVar1;
  
  if (param_1 != 0x8239c2f) {
    pvVar1 = FUN_00504b80(this,param_1);
    return pvVar1;
  }
  if (this != (void *)0x0) {
    return (void *)((int)this + 0x10);
  }
  return (void *)0x0;
}

