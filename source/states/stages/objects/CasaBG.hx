package states.stages.objects;

class CasaBG extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		frames = Paths.getSparrowAtlas("stages/sky/Casa");
		animation.addByIndices('idle', 'Casa', [0, 1, 2, 3, 4, 5, 6], "", 5, false);
		animation.play('idle');
		antialiasing = ClientPrefs.data.antialiasing;
	}

	var danceDir:Bool = false;

	public function dance():Void
	{
		danceDir = !danceDir;

		if (danceDir)
			animation.play('idle', true);
	}
}
