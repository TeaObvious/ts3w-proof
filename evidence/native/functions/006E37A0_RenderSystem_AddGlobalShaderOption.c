/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX owner, UInt32 option hash, RET4. Add only if absent to
   vector+238/+23C/+240; increment revision DWORD+248 only for an actual insertion. Direct original
   callers in WeatherManager_Update own seasonal input choices. No FSAALevel load or synthetic
   alpha-mode flag. */

void __thiscall RenderSystem_AddGlobalShaderOption(void *this,int param_1)

{
  int *piVar1;
  int *piVar2;
  
  piVar1 = *(int **)((int)this + 0x23c);
  piVar2 = *(int **)((int)this + 0x238);
  if (piVar2 != piVar1) {
    do {
      if (*piVar2 == param_1) break;
      piVar2 = piVar2 + 1;
    } while (piVar2 != piVar1);
    if (piVar2 != piVar1) {
      return;
    }
  }
  piVar1 = *(int **)((int)this + 0x23c);
  if (piVar1 < *(int **)((int)this + 0x240)) {
    *(int **)((int)this + 0x23c) = piVar1 + 1;
    if (piVar1 != (int *)0x0) {
      *piVar1 = param_1;
      *(int *)((int)this + 0x248) = *(int *)((int)this + 0x248) + 1;
      return;
    }
  }
  else {
    FUN_00982420((void *)((int)this + 0x238),piVar1,&param_1);
  }
  *(int *)((int)this + 0x248) = *(int *)((int)this + 0x248) + 1;
  return;
}

