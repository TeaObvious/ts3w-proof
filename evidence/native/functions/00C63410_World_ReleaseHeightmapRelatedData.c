/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. ECX=world manager; bool atStack+4, RET4, resultAL. force
   clears manager+152; otherwise set+152 returns true without cleanup. Stack context{manager
   at0,resultByte at4} begins false. Acquires job via singleton vtable+10 (callee-pop4), installs
   callback00c626c0/context and publicJob+20 affinitymask1, submits, waits, releases caller handle.
   Return !context.resultByte; allocation/callback failure can leave defaultfalse and returntrue
   without reclamation. No byte-size or general texture/model-cache guarantee. Displayed
   _forceRelease is the four-byte argument slot reused as JobPublic* after its input byte was
   consumed; original stack context remains separate. */

bool __thiscall World_ReleaseHeightmapRelatedData(void *this,bool forceRelease)

{
  bool bVar1;
  int *this_00;
  undefined3 in_stack_00000005;
  void *local_8;
  char local_4;
  
  if (forceRelease) {
    *(undefined1 *)((int)this + 0x152) = 0;
  }
  else if (*(char *)((int)this + 0x152) != '\0') {
    return true;
  }
  local_4 = '\0';
  local_8 = this;
  this_00 = JobManager_GetInterface();
  _forceRelease = (void *)0x0;
  bVar1 = (**(code **)(*this_00 + 0x10))(this_00,(void **)&forceRelease);
  if (bVar1) {
    *(code **)((int)_forceRelease + 8) = World_ReleaseHeightmapJobCallback;
    *(void ***)((int)_forceRelease + 0xc) = &local_8;
    *(undefined4 *)((int)_forceRelease + 0x20) = 1;
    Job_Submit(_forceRelease);
    Job_WaitUntilTerminal(_forceRelease);
  }
  bVar1 = local_4 == '\0';
  if (_forceRelease != (void *)0x0) {
    Job_ReleaseReference(_forceRelease);
  }
  return bVar1;
}

