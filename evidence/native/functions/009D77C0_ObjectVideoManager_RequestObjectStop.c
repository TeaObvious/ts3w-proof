/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 thiscall ECX manager with two stackwords for GUID low/high, RET8. Searches the
   row list for the full GUID; absent row returns. If row+78 is nonnull and its F1C750 query returns
   zero, stores pending byte+A3=1 and returns. Otherwise calls the existing end/fallback path9D7570.
   The F1C750 query producer is not expanded by this body. */

void __thiscall ObjectVideoManager_RequestObjectStop(void *this,int param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  int *local_4;
  
  piVar2 = *(int **)((int)this + 0x88);
  if (piVar2 != (int *)((int)this + 0x88)) {
    while ((piVar2[0x1c] != param_1 || (piVar2[0x1d] != param_2))) {
      piVar2 = (int *)*piVar2;
      if (piVar2 == (int *)((int)this + 0x88)) {
        return;
      }
    }
    local_4 = piVar2;
    if (((void *)piVar2[0x1e] != (void *)0x0) &&
       (iVar1 = FUN_00f1c750((void *)piVar2[0x1e]), iVar1 == 0)) {
      *(undefined1 *)((int)piVar2 + 0xa3) = 1;
      return;
    }
    ObjectVideoManager_EndPlaybackAndBindFallback(this,&param_1,(int *)&local_4);
  }
  return;
}

