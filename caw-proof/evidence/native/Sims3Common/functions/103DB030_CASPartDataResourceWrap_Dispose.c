/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASPartDataResourceWrap_Dispose;
   CASPartResourceWrap_Dispose; FacialBlendResource_Free; KeyNameMap_Destroy;
   ObjectManagerWrap_Release; PondWrap_Release; ShaderSet_Dispose; SimOutfitResourceWrap_Dispose;
   TextureCompositorResourceWrap_Destroy; ThumbnailManager_ReleaseThumbnailResource;
   VisualProxyResourceWrap_Dispose. Export ordinal(s): 1708; 1722; 1804; 1873; 1985; 2007; 2302;
   2373; 2491; 2516; 2545. Entry VA: 0x103db030. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600024E; CSHostWrap:0x06000385; CSHostWrap:0x060003B5; CSHostWrap:0x060003F3;
   CSHostWrap:0x060005F4; CSHostWrap:0x060006E8; CSHostWrap:0x06000814; CSHostWrap:0x060008D8;
   CSHostWrap:0x06000A0C; CSHostWrap:0x06000C48. This is an export/declaration annotation only; ABI,
   behavior and runtime execution require the original instructions and caller evidence. */

void CASPartDataResourceWrap_Dispose(int *param_1)

{
                    /* 0x3db030  1708  CASPartDataResourceWrap_Dispose
                       0x3db030  1722  CASPartResourceWrap_Dispose
                       0x3db030  1804  FacialBlendResource_Free
                       0x3db030  1873  KeyNameMap_Destroy
                       0x3db030  1985  ObjectManagerWrap_Release
                       0x3db030  2007  PondWrap_Release
                       0x3db030  2302  ShaderSet_Dispose
                       0x3db030  2373  SimOutfitResourceWrap_Dispose
                       0x3db030  2491  TextureCompositorResourceWrap_Destroy
                       0x3db030  2516  ThumbnailManager_ReleaseThumbnailResource
                       0x3db030  2545  VisualProxyResourceWrap_Dispose */
                    /* WARNING: Could not recover jumptable at 0x103db039. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*param_1 + 4))();
  return;
}

