/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static original. ECX room, ordinary RET. Copies100to104; absent resource154 ends. If
   F4equals global01159B00, pushes literal1 then calls6ACA90 and resource6ACAA0 before applying
   float626A30 from69F7A0. Stored child prototype for6ACA90 may omit the physical stack literal1;
   actual instructions define that call. This body is not proof of the child resource API/texture
   algorithm or GPU completion. */

void __fastcall RoomLighting_UpdateQualityDependentMapResource(int *param_1)

{
  float10 fVar1;
  
  param_1[0x41] = param_1[0x40];
  if (param_1[0x55] != 0) {
    if (param_1[0x3d] == DAT_01159b00) {
      FUN_006aca90(param_1[0x55]);
      FUN_006acaa0(param_1[0x55]);
    }
    fVar1 = FUN_0069f7a0(param_1);
    FUN_00626a30((void *)param_1[0x55],(float)fVar1);
  }
  return;
}

