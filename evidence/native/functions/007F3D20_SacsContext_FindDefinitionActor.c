/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX context,one stack dword RET4. Null
   definition=>0; otherwise reads definition+2C name hash, looks up driver wrapper007FFFE0 and
   returns wrapper entity+8 or0. Binding/lookup own virtual lifetime separately. C# fallback to
   requested actor for missing definition is an observed projection, not this native leaf's
   behavior. */

undefined4 __thiscall SacsContext_FindDefinitionActor(void *this,int param_1)

{
  int iVar1;
  
  if (param_1 != 0) {
    iVar1 = FUN_007fffe0(*(void **)this,*(int *)(param_1 + 0x2c));
    if (iVar1 != 0) {
      return *(undefined4 *)(iVar1 + 8);
    }
  }
  return 0;
}

