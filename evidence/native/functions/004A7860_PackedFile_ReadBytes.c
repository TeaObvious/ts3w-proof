/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Bounded role PackedFile_ReadBytes: provider buffer path truncates request to available bytes and
   advances cursor, otherwise child stream virtual+30 reads. Returns actual read count or delegated
   sentinel, not proof of full requested extent. No original payload-offset tombstone is established
   here. */

size_t __thiscall PackedFile_ReadBytes(void *this,void *param_1,size_t param_2)

{
  int iVar1;
  size_t sVar2;
  
  if (*(int *)((int)this + 0x264) != 0) {
    iVar1 = *(int *)((int)this + 0x26c);
    if (*(uint *)((int)this + 0x268) < iVar1 + param_2) {
      param_2 = *(uint *)((int)this + 0x268) - iVar1;
    }
    memcpy(param_1,(void *)(iVar1 + *(int *)((int)this + 0x264)),param_2);
    *(int *)((int)this + 0x26c) = *(int *)((int)this + 0x26c) + param_2;
    return param_2;
  }
                    /* WARNING: Could not recover jumptable at 0x004a78b5. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  sVar2 = (**(code **)(**(int **)((int)this + 0x260) + 0x30))();
  return sVar2;
}

