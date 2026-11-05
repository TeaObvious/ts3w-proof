/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original instruction review. cdecl sceneobject. If service exists, tests
   sceneobject+44 mask1 through0060FC70 and presentedalpha+1DC>binary32(.001); passes Boolean
   andGUID via006B0E30. Called on immediate update/explicit start/completed primary fade.
   Intermediate-frame setter does not call this endpoint helper directly. Other service semantics
   open. */

void __cdecl SceneObject_PublishOpacityEndpoint(void *sceneObject)

{
  void *this;
  uint uVar1;
  int iVar2;
  undefined1 local_34;
  
  local_34 = 0;
  this = (void *)FUN_006b0780();
  if (this != (void *)0x0) {
    uVar1 = GetNativeDescriptorTypeName_Field44((int)sceneObject);
    if ((uVar1 & 1) != 0) {
      if (_DAT_00fb35b4 < *(float *)((int)sceneObject + 0x1dc)) {
        local_34 = 1;
      }
    }
    if (sceneObject == (void *)0x0) {
      iVar2 = 0;
    }
    else {
      iVar2 = (int)sceneObject + 8;
    }
    FUN_006b0e30(this,*(uint *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0xc),local_34);
  }
  return;
}

