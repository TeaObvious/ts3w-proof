/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SocialFeaturesHost_Logout. Export ordinal(s):
   970. Entry VA: 0x10562d30. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000862. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void SocialFeaturesHost_Logout(char param_1)

{
  if (param_1 == '\0') {
    if (DAT_10c788dc != 0) {
      FUN_10677c60((void *)(DAT_10c788dc + -8),0);
      FUN_1080d240();
      return;
    }
    FUN_10677c60((void *)0x0,0);
    FUN_1080d240();
    return;
  }
  if (DAT_10c788dc != 0) {
    FUN_10677c60((void *)(DAT_10c788dc + -8),1);
    FUN_1080d240();
    return;
  }
  FUN_10677c60((void *)0x0,1);
  FUN_1080d240();
  return;
}

