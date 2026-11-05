/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 ECX receiver and one Float32 stackword, RET4. Calls4E1C00, then only when
   receiver+40 iszero multiplies input by Single+74, stores+64, replaces it with Single+78 only when
   COMISS/JBE doesnot take the lower-or-equal/unordered branch, then multiplies Single+68 and
   stores+64. Increments+5C and adds resulting Single to+60. Reads/clears byte+70 before4E1CC0; an
   enabled pending notification may then dispatch2CB180C0 with copied+6C. The child synchronization
   semantics, field initializer defaults and global timer identity are not established here. */

void __thiscall FrameTimer_UpdateGameDelta(void *this,float param_1)

{
  char cVar1;
  int *piVar2;
  float fVar3;
  
  FUN_004e1c00(this,(uint *)&DAT_00fd8cec);
  if (*(int *)((int)this + 0x40) == 0) {
    fVar3 = *(float *)((int)this + 0x74) * param_1;
    *(float *)((int)this + 100) = fVar3;
    if (*(float *)((int)this + 0x78) < fVar3) {
      *(float *)((int)this + 100) = *(float *)((int)this + 0x78);
    }
    fVar3 = *(float *)((int)this + 0x68) * *(float *)((int)this + 100);
    *(int *)((int)this + 0x5c) = *(int *)((int)this + 0x5c) + 1;
    *(float *)((int)this + 100) = fVar3;
    *(float *)((int)this + 0x60) = *(float *)((int)this + 0x60) + fVar3;
  }
  cVar1 = *(char *)((int)this + 0x70);
  *(undefined1 *)((int)this + 0x70) = 0;
  FUN_004e1cc0(this);
  if (cVar1 != '\0') {
    piVar2 = (int *)MessageDispatch_GetCurrent();
    if (piVar2 != (int *)0x0) {
      param_1 = *(float *)((int)this + 0x6c);
      (**(code **)(*piVar2 + 0x18))(0x2cb180c0,&param_1,0);
    }
  }
  return;
}

