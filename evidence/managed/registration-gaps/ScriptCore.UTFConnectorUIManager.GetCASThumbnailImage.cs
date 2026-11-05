// Original PC1.67 S3SA ScriptCore; MethodDef0x06000F4F. complete48-byte CIL wrapper.
// Identity and binding: evidence.json; central assembly provenance: ../reference-inputs.json.
// ILSpy method fragment; retained resolver warnings do not establish invalid original CIL.
using Sims3.SimIFace;

public uint GetCASThumbnailImage(ThumbnailKey key)
{
	//IL_0002: Unknown result type (might be due to invalid IL or missing references)
	//IL_0025: Unknown result type (might be due to invalid IL or missing references)
	return UIManager_GetCASThumbnailImageImpl(key.mDescKey, key.mIndex, key.mBodyType, key.mAgeGender, key.mLiveUpdate, key.mSize);
}
