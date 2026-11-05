/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. ECX=world manager; RET4; AL result. Set manager+152 returns
   true immediately. Otherwise keepLoaded sets that byte before attempting acquisition. Uses same
   stack-context job/submit/wait/release pattern as cleanup, callback00c62590, publicJob+20
   affinitymask1. Default resultfalse; normal callback writes heightmap pointer presence. Keep flag
   may remain set after unsuccessful acquisition/loading; no unconditional resource-success claim.
    */

bool __thiscall World_EnsureHeightmapRelatedData(void *this,bool keepLoaded)

{
  undefined1 uVar1;
  bool bVar2;
  int *this_00;
  undefined3 in_stack_00000005;
  void *local_8;
  undefined1 local_4;
  
  if (*(char *)((int)this + 0x152) != '\0') {
    return true;
  }
  if (keepLoaded) {
    *(undefined1 *)((int)this + 0x152) = 1;
  }
  local_4 = 0;
  local_8 = this;
  this_00 = JobManager_GetInterface();
  _keepLoaded = (void *)0x0;
  bVar2 = (**(code **)(*this_00 + 0x10))(this_00,(void **)&keepLoaded);
  if (bVar2) {
    *(code **)((int)_keepLoaded + 8) = World_LoadHeightmapJobCallback;
    *(void ***)((int)_keepLoaded + 0xc) = &local_8;
    *(undefined4 *)((int)_keepLoaded + 0x20) = 1;
    Job_Submit(_keepLoaded);
    Job_WaitUntilTerminal(_keepLoaded);
  }
  uVar1 = local_4;
  if (_keepLoaded != (void *)0x0) {
    Job_ReleaseReference(_keepLoaded);
  }
  return (bool)uVar1;
}

