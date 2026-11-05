/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall resource factory constructor. Identity resource
   type00B2D882,factory00B2D18E; config ForceHighLODObjects/DropTexMipsOnLoad/TextureSizeThreshold
   affects retained drop options and global thresholds. This is an original configuration producer,
   not proof all world textures are staged before simulation. */

undefined4 * __fastcall TextureResourceFactory_Construct(undefined4 *param_1)

{
  char cVar1;
  
  ResourceFactory_ConstructIdentity(param_1,0xb2d882,0xb2d18e);
  *param_1 = &PTR_FUN_00ffdc48;
  cVar1 = FUN_0058b460((LPCWSTR)"ForceHighLODObjects",0);
  if (cVar1 == '\0') {
    DAT_011d3fb0 = FUN_0058af00((short *)PTR_u_Config_01150ab0,L"DropTexMipsOnLoad",0);
  }
  else {
    DAT_011d3fb0 = 0;
  }
  DAT_011d3fb4 = FUN_0058af00((short *)PTR_u_Config_01150ab0,L"TextureSizeThreshold",0);
  if (cVar1 != '\0') {
    DAT_011d3fbc = 0;
    DAT_011d3fc0 = 0x800;
    FUN_005fc150(&DAT_01158dc8);
    return param_1;
  }
  DAT_011d3fbc = DAT_011d3fb0 + 1;
  DAT_011d3fc0 = 0x100;
  FUN_005fc150(&DAT_01158dc8);
  return param_1;
}

