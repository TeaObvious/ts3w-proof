/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): ECX evaluation context,two stack words RET8,AL
   admission. Machine unilateral bit1, driver mode+3C, requested actor definition identity, and
   other actor wrapper current+10/pending+1C determine admission. Different aliases sharing GUID are
   not automatically identical actor definitions. Upper EAX undefined beyondAL. */

uint __thiscall SacsContext_AdmitActorNode(void *this,int param_1,int param_2)

{
  void *this_00;
  
  if ((((param_2 != 0) &&
       (this_00 = *(void **)this,
       ((byte)*(undefined4 *)(*(int *)((int)this_00 + 0xc) + 0x3c) & 1) != 1)) &&
      (*(char *)((int)this_00 + 0x3c) == '\0')) &&
     (*(int *)(*(int *)(param_1 + 8) + 0x20) != param_2)) {
    param_2 = SacsDriver_FindExistingActorWalker(this_00,*(int *)(param_2 + 0x2c));
    if ((param_2 != 0) && ((*(int *)(param_2 + 0x10) != 0 || (*(int *)(param_2 + 0x1c) != 0)))) {
      return param_2 & 0xffffff00;
    }
  }
  return CONCAT31((int3)((uint)param_2 >> 8),1);
}

