/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note, original PC1.67 static. ECX service, five DWORD slots/RET14hex; last two controls
   are tested by low byte, names remain opaque rather than guessed event classes. Copy seven DWORD
   event payload words, overwrite source with first IWindow and destination with second receiver
   interface. Temporarily clear service+6A8 then notify optional observer+ D8,
   select50BF00/50BD60/50B890 routes according to actual flags, possibly issue observer follow-up,
   restore saved service+6A8 and return only AL. Detach50CBC0 supplies source==receiver==child
   IWindow and both controls0. Deeper routing helpers remain distinct actual callees; no claim that
   every native routing/focus side effect equals a CLR event invocation. Actual C reuses
   receiverInterface._0_1_ as a local low-byte result and splits the seven-DWORD local copy across
   locals. Those stack aliases do not mean a byte is written through the caller IWindow pointer. The
   original MOV/REP copy and AL branches are authoritative. */

bool __thiscall
UiWindowService_DispatchEvent
          (void *this,void *sourceInterface,void *receiverInterface,void *eventMessage,
          uint opaqueRouteA,uint opaqueRouteB)

{
  undefined4 uVar1;
  char cVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  int *piVar6;
  void **ppvVar7;
  void *local_1c;
  int *local_18;
  
  uVar1 = *(undefined4 *)((int)this + 0x6a8);
  *(undefined4 *)((int)this + 0x6a8) = 0;
  if (receiverInterface == (void *)0x0) {
    piVar6 = (int *)0x0;
  }
  else {
    piVar6 = (int *)((int)receiverInterface + -4);
  }
  ppvVar7 = &local_1c;
  for (iVar5 = 7; iVar5 != 0; iVar5 = iVar5 + -1) {
    *ppvVar7 = *(void **)eventMessage;
    eventMessage = (undefined4 *)((int)eventMessage + 4);
    ppvVar7 = ppvVar7 + 1;
  }
  local_1c = sourceInterface;
  if (piVar6 == (int *)0x0) {
    local_18 = (int *)0x0;
  }
  else {
    local_18 = piVar6 + 1;
  }
  if (*(int **)((int)this + 0xd8) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0xd8) + 0xc))(0,0,&local_1c);
  }
  receiverInterface._0_1_ = false;
  if ((char)opaqueRouteB != '\0') {
    uVar3 = FUN_0050bf00(this,piVar6,(int *)&local_1c,0);
    *(undefined4 *)((int)this + 0x6a8) = uVar1;
    return SUB41(uVar3,0);
  }
  if ((char)opaqueRouteA != '\0') {
    uVar4 = FUN_0050bd60(this,(int *)&local_1c,'\0');
    *(undefined4 *)((int)this + 0x6a8) = uVar1;
    return SUB41(uVar4,0);
  }
  cVar2 = UiWindowService_DispatchToProcedures(this,piVar6,(int)&local_1c,'\0');
  if (cVar2 != '\0') {
    if (*(int **)((int)this + 0xd8) != (int *)0x0) {
      if (piVar6 == (int *)0x0) {
        piVar6 = (int *)0x0;
      }
      else {
        piVar6 = piVar6 + 1;
      }
      (**(code **)(**(int **)((int)this + 0xd8) + 0xc))(4,piVar6,&local_1c);
    }
    receiverInterface._0_1_ = true;
  }
  if ((*(int **)((int)this + 0xd8) != (int *)0x0) && (receiverInterface._0_1_ == false)) {
    (**(code **)(**(int **)((int)this + 0xd8) + 0xc))(5,0,&local_1c);
  }
  *(undefined4 *)((int)this + 0x6a8) = uVar1;
  return receiverInterface._0_1_;
}

