/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: ECX public handle converted to internal-8, owner manager
   internal+34 locked at+8,0059abe0 waits, then lock released. No timeout argument or status return.
   Null is not a safe no-op; owner pointer would be read from address34. */

void __thiscall Job_WaitUntilTerminal(void *this)

{
  LPCRITICAL_SECTION this_00;
  void *this_01;
  void *job;
  
  if (this == (void *)0x0) {
    job = (void *)0x0;
  }
  else {
    job = (void *)((int)this + -8);
  }
  this_01 = *(void **)((int)job + 0x34);
  this_00 = (LPCRITICAL_SECTION)((int)this_01 + 8);
  FUN_004e1c00(this_00,(uint *)&DAT_00fda7ac);
  JobManager_WaitForInternalJob(this_01,job);
  FUN_004e1cc0(this_00);
  return;
}

