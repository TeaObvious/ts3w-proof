/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX context,one stack dword RET4. Null
   definition=>0; otherwise reads definition+2C name hash, looks up driver wrapper007FFFE0 and
   returns wrapper entity+8 or0. Binding/lookup own virtual lifetime separately. C# fallback to
   requested actor for missing definition is an observed projection, not this native leaf's
   behavior. */

undefined4 __thiscall SacsContext_FindDefinitionActor(void *this,int param_1)

{
  int iVar1;
  
  if (param_1 != 0) {
    iVar1 = SacsDriver_FindExistingActorWalker(*(void **)this,*(int *)(param_1 + 0x2c));
    if (iVar1 != 0) {
      return *(undefined4 *)(iVar1 + 8);
    }
  }
  return 0;
}

