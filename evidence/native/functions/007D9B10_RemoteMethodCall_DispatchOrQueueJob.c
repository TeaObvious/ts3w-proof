/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX remote-call record plus TWO stack DWORDs, RET08. First lowbyte
   chooses registered dispatch thread: nonzero007D9C40, zero007D9C20; compare with actual
   GetCurrentThreadId import. Same thread invokes virtual+10 inline then returns record+8 byte,
   independent of second flag. Different thread obtains JobManager, calls virtual+10 with address of
   actual local job pointer at[ESP+0C], checks AL, and releases a returned partial job on failed
   acquisition. SECOND lowbyte at[ESP+18] controls retain/setup00599C20 and whether submission
   returnsAL1 immediately or calls actual Job_WaitUntilTerminal then00599BE0 before returning
   record+8; it is distinct from first thread-selection flag. Job callback address007D9A90 and
   record assigned atjob+8/+C, worker affinity mask at public job+20/internal+28=(firstFlag!=0?4:1);
   actual scheduling priority is internal+48, then Job_Submit. Existing one-parameter prototype is
   retained: decompiler unaff_EBX and its substituted first-flag async branches are artifacts
   contradicted by actual local-pointer loads and second-stack-byte checks. Do not use that C
   expression as physical ABI. OriginalABD400/ABD490 push secondFlag1 and their selected first flag
   then release their local record; complete callback007D9A90/virtual execution and target lifetime
   remain separate open boundaries, not a recovered Task/CTS policy. */

undefined1 __thiscall RemoteMethodCall_DispatchOrQueueJob(void *this,char param_1)

{
  undefined1 uVar1;
  char cVar2;
  DWORD DVar3;
  DWORD DVar4;
  int *piVar5;
  void *unaff_EBX;
  void *local_4;
  
  local_4 = this;
  DVar3 = GetCurrentThreadId();
  if (param_1 == '\0') {
    DVar4 = ThreadIdentity_ReadRegisteredPumpThreadId();
  }
  else {
    DVar4 = ThreadIdentity_ReadRemoteDispatchThreadId();
  }
  if (DVar4 == DVar3) {
    (**(code **)(*(int *)this + 0x10))();
                    /* RET08 proves two actual stack DWORDs. Existing inferred one-parameter
                       prototype is preserved; use instruction-level input map. */
    return *(undefined1 *)((int)this + 8);
  }
  piVar5 = JobManager_GetInterface();
  if (piVar5 != (int *)0x0) {
    local_4 = (void *)0x0;
    cVar2 = (**(code **)(*piVar5 + 0x10))(&local_4);
    if (cVar2 != '\0') {
      if (param_1 != '\0') {
                    /* Actual ECX job=[ESP+0C], not decompiler unaff_EBX. This conditional is SECOND
                       stack byte at[ESP+18], independent of BL first flag. */
        FUN_00599c20(unaff_EBX,this);
      }
      *(undefined1 **)((int)unaff_EBX + 8) = &LAB_007d9a90;
      *(void **)((int)unaff_EBX + 0xc) = this;
                    /* Public job+20 is internal+28 worker-affinity mask (1 or4 here), consumed
                       by59A980 after59AD10 subtracts8. Actual scheduling priority is internal+48,
                       not this lane. */
      *(uint *)((int)unaff_EBX + 0x20) = (-(uint)(param_1 != '\0') & 3) + 1;
      Job_Submit(unaff_EBX);
                    /* Test SECOND stack byte, not first thread-selector. Nonzero returns after
                       Job_Submit; zero waits for terminal then returns record+8. */
      if (param_1 != '\0') {
        if (unaff_EBX != (void *)0x0) {
          Job_ReleaseReference(unaff_EBX);
        }
        return 1;
      }
      Job_WaitUntilTerminal(unaff_EBX);
      FUN_00599be0((int)unaff_EBX);
      uVar1 = *(undefined1 *)((int)this + 8);
      if (unaff_EBX != (void *)0x0) {
        Job_ReleaseReference(unaff_EBX);
      }
      return uVar1;
    }
    if (unaff_EBX != (void *)0x0) {
      Job_ReleaseReference(unaff_EBX);
    }
  }
  return 0;
}

