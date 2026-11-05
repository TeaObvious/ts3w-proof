/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX context,one stack dword RET4,EAX scene
   entity or0. Nonzero actor hash looks up wrapper007FFFE0 on driver; returns wrapper+8 if present.
   Null/zero returns0. A current C# present dictionary key with GUID0 is a separate representation;
   callers distinguish presence from playable nonzero object. */

undefined4 __thiscall SacsContext_FindActorByHash(void *this,int param_1)

{
  int iVar1;
  
  if (param_1 != 0) {
    iVar1 = FUN_007fffe0(*(void **)this,param_1);
    if (iVar1 != 0) {
      return *(undefined4 *)(iVar1 + 8);
    }
  }
  return 0;
}

