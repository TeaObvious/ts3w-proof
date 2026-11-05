/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_SetObjectSnowDisableSource:


/* Analyst-assigned name. Source0/1/2/3 map to disable bits20000/40000/80000/100000. Enabled clears
   selected bit, disabled sets it. Calls95E690 only when aggregate mask1E0000 transitions between
   empty/nonempty. Invalid source does nothing. */

void __thiscall Seasons_SetObjectSnowDisableSource(void *this,char param_1,undefined4 param_2)

{
  uint uVar1;
  uint uVar2;

  uVar1 = *(uint *)((int)this + 8);
  switch(param_2) {
  case 0:
    uVar2 = 0x20000;
    break;
  case 1:
    uVar2 = 0x40000;
    break;
  case 2:
    uVar2 = 0x80000;
    break;
  case 3:
    uVar2 = 0x100000;
    break;
  default:
    goto switchD_0095f825_default;
  }
  if (param_1 == '\0') {
    *(uint *)((int)this + 8) = uVar1 | uVar2;
  }
  else {
    *(uint *)((int)this + 8) = ~uVar2 & uVar1;
  }
  if (((*(uint *)((int)this + 8) & 0x1e0000) == 0) != ((uVar1 & 0x1e0000) == 0)) {
    Seasons_PublishObjectSnowDisableState(this,'\x01');
  }
switchD_0095f825_default:
  return;
}


