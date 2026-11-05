/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintQueryCell_SelectChild.
   Original Ghidra database symbol: FUN_0066a310; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [0066a310,0066a4ee); 0 envelope gap bytes are not owned instructions.
*/

/* A real branch node with low two tag bits equal to1 selects child slot+0C+4*q, halves scale and resets subcell code to0. A compressed leaf keeps its backing storage while selecting a virtual subcell using FEF598. Missing backing storage propagates a null selection. Packed coordinates, level/depth bits and child-code tables are separate; do not replace them with per-polygon intersection. */

void __thiscall FootprintQueryCell_SelectChild(void *this,int param_1,void *param_2)

{
  undefined4 uVar1;
  uint uVar2;
  
  if (*(int *)((int)this + 0xc) == 0) {
    *(uint *)((int)param_2 + 0x18) =
         *(uint *)((int)param_2 + 0x18) ^
         (*(int *)(&DAT_00fefdbc + param_1 * 8) + *(int *)((int)this + 0x18) * 2 ^
         *(uint *)((int)param_2 + 0x18)) & 0xfff;
    uVar2 = ((*(int *)(&DAT_00fefdc0 + param_1 * 8) + (uint)*(ushort *)((int)this + 0x1a) * 2) *
             0x10000 ^ *(uint *)((int)param_2 + 0x18)) & 0xfff0000 ^ *(uint *)((int)param_2 + 0x18);
    *(uint *)((int)param_2 + 0x18) = uVar2;
    uVar2 = (*(uint *)((int)this + 0x18) ^ uVar2) & 0xf000 ^ uVar2;
    *(uint *)((int)param_2 + 0x18) = uVar2;
    *(float *)((int)param_2 + 0x14) = *(float *)((int)this + 0x14) * 0.5;
    *(uint *)((int)param_2 + 0x18) =
         (*(uint *)((int)this + 0x18) & 0xf0000000) + 0x10000000 ^ uVar2 & 0xfffffff;
    *(undefined4 *)((int)param_2 + 4) = *(undefined4 *)((int)this + 4);
    *(undefined4 *)((int)param_2 + 8) = 0;
    *(uint *)((int)param_2 + 0x20) =
         *(uint *)((int)param_2 + 0x20) ^ (param_1 << 8 ^ *(uint *)((int)param_2 + 0x20)) & 0x300;
    *(undefined4 *)((int)param_2 + 0xc) = 0;
    *(undefined *)((int)param_2 + 0x1c) =
         (&DAT_00fef598)[(param_1 + (*(uint *)((int)this + 0x1c) & 0xff) * 4) * 4];
    *(uint *)((int)param_2 + 0x1c) = *(uint *)((int)param_2 + 0x1c) & 0xff;
    return;
  }
  if (((byte)*(undefined4 *)(*(int *)((int)this + 0xc) + 4) & 3) == 1) {
    *(uint *)((int)param_2 + 0x18) =
         *(uint *)((int)param_2 + 0x18) ^
         (*(int *)(&DAT_00fefdbc + param_1 * 8) + *(int *)((int)this + 0x18) * 2 ^
         *(uint *)((int)param_2 + 0x18)) & 0xfff;
    uVar2 = ((*(int *)(&DAT_00fefdc0 + param_1 * 8) + (uint)*(ushort *)((int)this + 0x1a) * 2) *
             0x10000 ^ *(uint *)((int)param_2 + 0x18)) & 0xfff0000 ^ *(uint *)((int)param_2 + 0x18);
    *(uint *)((int)param_2 + 0x18) = uVar2;
    uVar2 = (*(uint *)((int)this + 0x18) ^ uVar2) & 0xf000 ^ uVar2;
    *(uint *)((int)param_2 + 0x18) = uVar2;
    *(float *)((int)param_2 + 0x14) = *(float *)((int)this + 0x14) * 0.5;
    *(uint *)((int)param_2 + 0x18) =
         (*(uint *)((int)this + 0x18) & 0xf0000000) + 0x10000000 ^ uVar2 & 0xfffffff;
    *(undefined4 *)((int)param_2 + 4) = *(undefined4 *)((int)this + 4);
    *(undefined4 *)((int)param_2 + 8) = *(undefined4 *)((int)this + 0xc);
    uVar1 = *(undefined4 *)(*(int *)((int)this + 0xc) + 0xc + param_1 * 4);
    *(uint *)((int)param_2 + 0x20) =
         *(uint *)((int)param_2 + 0x20) ^ (param_1 << 8 ^ *(uint *)((int)param_2 + 0x20)) & 0x300;
    *(undefined1 *)((int)param_2 + 0x1c) = 0;
    *(uint *)((int)param_2 + 0x1c) = *(uint *)((int)param_2 + 0x1c) & 0xff;
    *(undefined4 *)((int)param_2 + 0xc) = uVar1;
    return;
  }
  if (param_2 != this) {
    FUN_0061be90(param_2,(int)this);
  }
  *(undefined *)((int)param_2 + 0x1c) =
       (&DAT_00fef598)[(param_1 + (*(uint *)((int)this + 0x1c) & 0xff) * 4) * 4];
  *(uint *)((int)param_2 + 0x20) =
       *(uint *)((int)param_2 + 0x20) ^ (param_1 << 8 ^ *(uint *)((int)param_2 + 0x20)) & 0x300;
  *(uint *)((int)param_2 + 0x1c) = *(uint *)((int)param_2 + 0x1c) & 0xff;
  return;
}
