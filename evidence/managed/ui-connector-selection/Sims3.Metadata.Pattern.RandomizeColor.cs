// Original PC 1.67 S3SA Sims3Metadata:060001DE; assembly identity: ../reference-inputs.json
// Annotated ILSpy view; the original projection below is retained verbatim.
// Complete 229-byte method retained; this handoff contract uses its CurrentDomain.GetData("UIManager") and IUIManager cast.
// It reads the key in this method rather than UI.gUIMgr. Equality/synchronization with an earlier cache and broader color/resource semantics remain open.

using System;
using Sims3.SimIFace;

private static Vector3 RandomizeColor(ResourceKey imageKey)
{
	//IL_000f: Unknown result type (might be due to invalid IL or missing references)
	//IL_0015: Expected Obj, but got Unknown
	//IL_0015: Unknown result type (might be due to invalid IL or missing references)
	//IL_001a: Unknown result type (might be due to invalid IL or missing references)
	//IL_001b: Unknown result type (might be due to invalid IL or missing references)
	//IL_001c: Unknown result type (might be due to invalid IL or missing references)
	//IL_0080: Unknown result type (might be due to invalid IL or missing references)
	//IL_0081: Unknown result type (might be due to invalid IL or missing references)
	//IL_0037: Unknown result type (might be due to invalid IL or missing references)
	//IL_003a: Unknown result type (might be due to invalid IL or missing references)
	//IL_003f: Unknown result type (might be due to invalid IL or missing references)
	//IL_00e3: Unknown result type (might be due to invalid IL or missing references)
	//IL_00dc: Unknown result type (might be due to invalid IL or missing references)
	//IL_00dd: Unknown result type (might be due to invalid IL or missing references)
	//IL_00e2: Unknown result type (might be due to invalid IL or missing references)
	IUIManager val = (IUIManager)AppDomain.CurrentDomain.GetData("UIManager");
	Vector3 val2 = Vector3.Invalid;
	if (imageKey != ResourceKey.kInvalidResourceKey)
	{
		float num = (float)RandomGen.NextDouble();
		float num2 = (float)RandomGen.NextDouble();
		Color val3 = val.PickPixel(imageKey, num, num2);
		val2.x = (float)(int)val3.Red / 255f;
		val2.y = (float)(int)val3.Green / 255f;
		val2.z = (float)(int)val3.Blue / 255f;
	}
	if (val2 == Vector3.Invalid)
	{
		val2.x = (float)RandomGen.NextDouble();
		val2.y = (float)(RandomGen.NextDouble() * 0.8 + 0.2);
		val2.z = (float)(RandomGen.NextDouble() * 0.8 + 0.2);
		val2 = HsvToColor(val2);
	}
	return val2;
}
