// Original PC 1.67 S3SA UI:06001274; assembly identity: ../reference-inputs.json
// Annotated ILSpy view; the original projection below is retained verbatim.
// Complete 24-byte consumer: reads cached gUIMgr and invokes the interface; it does not refresh GetData.
// Zero result returns null; nonzero reaches UIImage construction. Current virtual target and resource lifetime are unproved.

using Sims3.SimIFace;

public static UIImage GetCASThumbnailImage(ThumbnailKey key)
{
	//IL_0005: Unknown result type (might be due to invalid IL or missing references)
	uint cASThumbnailImage = gUIMgr.GetCASThumbnailImage(key);
	if (cASThumbnailImage == 0)
	{
		return null;
	}
	return new UIImage(cASThumbnailImage);
}
