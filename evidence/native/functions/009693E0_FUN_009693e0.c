/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * ECX owner startup. Missing active path calls finish. From-authored inserts first duplicate at time-1 and starts0; from-current supplies current position/rotation and FOV conversion, inserts two controls at-1 then subtracts1 from first, starts-1. Publishes state, unwraps via968200, requires at least4controls then sets world imposter mode if bound. Allocation/helpers/full callback/ground and exception remain separate.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 009693E0_FUN_009693e0.asm
 */

void __fastcall FUN_009693e0(int param_1)

{
  undefined4 *this;
  undefined4 *puVar1;
  float fVar2;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  float local_20;
  float local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  if (*(int *)(param_1 + 0x18c) == 0) {
    FUN_00968a80(param_1);
    return;
  }
  FUN_00968a30(param_1);
  this = *(undefined4 **)(param_1 + 0x18c);
  if (*(char *)(param_1 + 0x1a1) == '\0') {
    puVar1 = (undefined4 *)*this;
    local_18 = puVar1[10];
    local_40 = *puVar1;
    uStack_3c = puVar1[1];
    uStack_38 = puVar1[2];
    uStack_34 = puVar1[3];
    local_30 = puVar1[4];
    uStack_2c = puVar1[5];
    uStack_28 = puVar1[6];
    uStack_24 = puVar1[7];
    local_20 = (float)puVar1[8];
    local_1c = FLOAT_00fab218;
    FUN_009691e0(this,puVar1,&local_40);
    fVar2 = 0.0;
    *(undefined4 *)(param_1 + 0x198) = 1;
  }
  else {
    local_40 = *(undefined4 *)(param_1 + 0x120);
    uStack_3c = *(undefined4 *)(param_1 + 0x124);
    uStack_38 = *(undefined4 *)(param_1 + 0x128);
    uStack_34 = *(undefined4 *)(param_1 + 300);
    local_30 = *(undefined4 *)(param_1 + 0x160);
    uStack_2c = *(undefined4 *)(param_1 + 0x164);
    uStack_28 = *(undefined4 *)(param_1 + 0x168);
    uStack_24 = *(undefined4 *)(param_1 + 0x16c);
    local_20 = *(float *)(*(int *)(param_1 + 0xc) + 0x14) * DAT_01045f8c;
    local_18 = 0;
    local_14 = 0;
    local_1c = FLOAT_00fab218;
    FUN_009685c0(this,(undefined4 *)*this,2,&local_40);
    *(float *)(**(int **)(param_1 + 0x18c) + 0x24) =
         *(float *)(**(int **)(param_1 + 0x18c) + 0x24) - FLOAT_00f998f8;
    fVar2 = FLOAT_00fab218;
    *(undefined4 *)(param_1 + 0x198) = 2;
  }
  *(float *)(param_1 + 0x194) = fVar2;
  FUN_00968200(param_1);
  *(undefined1 *)(param_1 + 0x1a0) = 1;
  if ((uint)(((*(int **)(param_1 + 0x18c))[1] - **(int **)(param_1 + 0x18c)) / 0x30) < 4) {
    FUN_00968a80(param_1);
  }
  if (*(void **)(param_1 + 0x188) != (void *)0x0) {
    WorldManager_SetImposterMode(*(void **)(param_1 + 0x188),'\x01');
  }
  return;
}

