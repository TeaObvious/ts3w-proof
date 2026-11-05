/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 internal sea-level setter reached from SeaWrap_SetSeaLevel at 0x1098F8B0. It stores
   the incoming level at this+0x14, updates scene water state when a scene exists, sets a scene
   dirty byte, stores the same level in global DAT_10C33EC0, and iterates a child collection calling
   0x101DBF80. The explicit zero argument from the wrapper accompanies the level. These static
   writes do not by themselves prove resulting water geometry or persistence. */

void __thiscall CAW_SeaSetLevelAndPropagate(void *this,undefined4 param_1)

{
  undefined4 *puVar1;
  void *this_00;
  undefined4 *puVar2;
  
  *(undefined4 *)((int)this + 0x14) = param_1;
  this_00 = (void *)FUN_104de3a0();
  if (this_00 != (void *)0x0) {
    FUN_104decf0(this_00,*(undefined4 *)((int)this + 0x14));
    *(undefined1 *)((int)this_00 + 0x2a3) = 1;
  }
  puVar1 = *(undefined4 **)((int)this + 0x2cc);
  DAT_10c33ec0 = param_1;
  for (puVar2 = *(undefined4 **)((int)this + 0x2c8); puVar2 != puVar1; puVar2 = puVar2 + 1) {
    FUN_101dbf80((void *)*puVar2,param_1);
  }
  return;
}

