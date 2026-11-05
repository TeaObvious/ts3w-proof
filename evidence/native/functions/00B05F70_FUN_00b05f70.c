/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Six physical cdecl words; output matrix last. Quantizes angle through DIVSS then inherited-x87 FISTP; only odd orientation with clear C97890 result reaches anchor. Zero-row path can still admit through A4mask400F/AFFCB0. Calls B05870, constructs anchor transform then B05B90 and combines matrices; other path calls B05B90 directly. Whole B05B90 transform/lot state and helper lifetime remain separate; do not reduce every source case to nonzero cutouts.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00B05F70_FUN_00b05f70.asm
 */

void __cdecl
FUN_00b05f70(void *param_1,int param_2,void *param_3,float param_4,float *param_5,float *param_6)

{
  uint uVar1;
  undefined4 uVar2;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (((int)ROUND(param_4 / DAT_011845d4) & 1U) != 0) {
    uVar1 = FUN_00c97890(param_2);
    if ((char)uVar1 == '\0') {
      if ((*(int *)(param_2 + 0xd4) == *(int *)(param_2 + 0xd8)) &&
         ((*(uint *)(param_2 + 0xa4) & 0x400f) == 0)) {
        uVar2 = FUN_00affcb0(param_1);
        if ((char)uVar2 == '\0') goto LAB_00b06177;
      }
      FUN_00b05870(param_1,param_2,(uint *)&local_90);
      local_80 = FLOAT_00f998f8;
      fStack_7c = 0.0;
      fStack_78 = 0.0;
      fStack_74 = 0.0;
      local_60 = 0.0;
      fStack_5c = FLOAT_00f998f8;
      fStack_58 = 0.0;
      fStack_54 = 0.0;
      local_70 = 0.0;
      fStack_6c = 0.0;
      fStack_68 = FLOAT_00f998f8;
      fStack_64 = 0.0;
      fStack_84 = FLOAT_00f998f8;
      FUN_00b05b90(param_3,param_4,param_5,&local_50);
      *param_6 = fStack_7c * local_40 + local_80 * local_50 + fStack_78 * local_30 +
                 fStack_74 * local_20;
      param_6[1] = fStack_7c * fStack_3c + local_80 * fStack_4c + fStack_78 * fStack_2c +
                   fStack_74 * fStack_1c;
      param_6[2] = fStack_7c * fStack_38 + local_80 * fStack_48 + fStack_78 * fStack_28 +
                   fStack_74 * fStack_18;
      param_6[3] = fStack_7c * fStack_34 + local_80 * fStack_44 + fStack_78 * fStack_24 +
                   fStack_74 * fStack_14;
      param_6[4] = fStack_5c * local_40 + local_60 * local_50 + fStack_58 * local_30 +
                   fStack_54 * local_20;
      param_6[5] = fStack_5c * fStack_3c + local_60 * fStack_4c + fStack_58 * fStack_2c +
                   fStack_54 * fStack_1c;
      param_6[6] = fStack_5c * fStack_38 + local_60 * fStack_48 + fStack_58 * fStack_28 +
                   fStack_54 * fStack_18;
      param_6[7] = fStack_5c * fStack_34 + local_60 * fStack_44 + fStack_58 * fStack_24 +
                   fStack_54 * fStack_14;
      param_6[8] = fStack_6c * local_40 + local_70 * local_50 + fStack_68 * local_30 +
                   fStack_64 * local_20;
      param_6[9] = fStack_6c * fStack_3c + local_70 * fStack_4c + fStack_68 * fStack_2c +
                   fStack_64 * fStack_1c;
      param_6[10] = fStack_6c * fStack_38 + local_70 * fStack_48 + fStack_68 * fStack_28 +
                    fStack_64 * fStack_18;
      param_6[0xb] = fStack_6c * fStack_34 + local_70 * fStack_44 + fStack_68 * fStack_24 +
                     fStack_64 * fStack_14;
      param_6[0xc] = fStack_8c * local_40 + local_90 * local_50 + fStack_88 * local_30 +
                     fStack_84 * local_20;
      param_6[0xd] = fStack_8c * fStack_3c + local_90 * fStack_4c + fStack_88 * fStack_2c +
                     fStack_84 * fStack_1c;
      param_6[0xe] = fStack_8c * fStack_38 + local_90 * fStack_48 + fStack_88 * fStack_28 +
                     fStack_84 * fStack_18;
      param_6[0xf] = fStack_8c * fStack_34 + local_90 * fStack_44 + fStack_88 * fStack_24 +
                     fStack_84 * fStack_14;
      return;
    }
  }
LAB_00b06177:
  FUN_00b05b90(param_3,param_4,param_5,param_6);
  return;
}

