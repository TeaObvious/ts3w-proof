/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, PC 1.67 TS3W.exe. The animation manager caches one CLIP reference at
   +0x14. Its requested instance low/high words are +0x40/+0x44; lookup builds type 0x6B20C4F3 and
   group 0. A missing cache or different cached instance releases the old reference and asks the
   resource manager for that exact configured key. Called by 0x0093D620 when the ClipController
   request carries no clip reference. This establishes a configured fallback resource, not its asset
   name, duration, or rendered pose. */

int __fastcall AnimationManager_GetConfiguredFallbackClip(int animationManager)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;

  iVar4 = *(int *)(animationManager + 0x14);
  piVar1 = (int *)(animationManager + 0x14);
  if (((iVar4 == 0) || (*(int *)(iVar4 + 8) != *(int *)(animationManager + 0x40))) ||
     (*(int *)(iVar4 + 0xc) != *(int *)(animationManager + 0x44))) {
    piVar3 = (int *)FUN_004afe80();
    local_c = *(undefined4 *)(animationManager + 0x44);
    piVar2 = (int *)*piVar1;
    local_10 = *(undefined4 *)(animationManager + 0x40);
    local_8 = 0x6b20c4f3;
    local_4 = 0;
    if (piVar2 != (int *)0x0) {
      *piVar1 = 0;
      (**(code **)(*piVar2 + 4))();
    }
    (**(code **)(*piVar3 + 0xc))(&local_10,piVar1,0,0,0,0);
    iVar4 = *piVar1;
  }
  return iVar4;
}

