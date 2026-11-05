/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Original thiscall takes one key
   pointer (RET 4), returns success in AL only. Resource manager004afe80; its vtable+0xc receives
   key, address of zero local output and four zero flags. On success BindResource retains output
   then vtable+4 releases the temporary resource. Decompiler output-pointer alias is corrected by
   original MOV [ESP+4] instructions. Playback entry ignores boolean failure. */

bool __thiscall AnimationClipController_LoadResource(void *this,int *clipKey)

{
  char cVar1;
  int *piVar2;
  void **ppvVar3;
  void *local_4;
  
  local_4 = this;
  piVar2 = (int *)FUN_004afe80();
  if (piVar2 != (int *)0x0) {
    ppvVar3 = &local_4;
    local_4 = (void *)0x0;
    cVar1 = (**(code **)(*piVar2 + 0xc))(clipKey,ppvVar3,0,0,0,0);
    if (cVar1 != '\0') {
      AnimationClipController_BindResource(this,(int *)ppvVar3);
      (**(code **)((int)*ppvVar3 + 4))();
      return true;
    }
  }
  return false;
}

