// Original PC 1.67 S3SA UI:060011E8; assembly identity: ../reference-inputs.json
// Annotated ILSpy view; the original projection below is retained verbatim.
// Complete 18-byte task constructor: stores true to sIsRunningUTFDesigner and calls the force method.
// The body contains no connector object construction; type-initialization timing remains a separate question.

public InitUIManagerTask()
{
	sIsRunningUTFDesigner = true;
	UIManager.ForceStaticConstructionForUTFDesigner();
}
