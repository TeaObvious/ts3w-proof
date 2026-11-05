/* PC1.67 original static contract. Two cdecl pointers, source is read as aligned16B rows. Copy each
   of16 DWORD/Single lanes at unchanged offsets0..3C into destination. No transpose, inversion,
   coordinate conversion or numeric validation. Source/destination overlap beyond exact alias is not
   certified. Caller786E70 already obtained inverse lot matrix; this helper only marshals its
   existing layout. */

void __cdecl Matrix44_CopyNativeToScriptFields(undefined4 *param_1,undefined4 *param_2)

{
  *param_1 = *param_2;
  param_1[1] = param_2[1];
  param_1[2] = param_2[2];
  param_1[3] = param_2[3];
  param_1[4] = param_2[4];
  param_1[5] = param_2[5];
  param_1[6] = param_2[6];
  param_1[7] = param_2[7];
  param_1[8] = param_2[8];
  param_1[9] = param_2[9];
  param_1[10] = param_2[10];
  param_1[0xb] = param_2[0xb];
  param_1[0xc] = param_2[0xc];
  param_1[0xd] = param_2[0xd];
  param_1[0xe] = param_2[0xe];
  param_1[0xf] = param_2[0xf];
  return;
}
