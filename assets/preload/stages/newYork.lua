
function onCreate()
	
	-- background shit
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx_bf'); --put in mods/sounds/

	makeLuaSprite('boob', 'newYork/NYCBuildings', -740, -530);
	setScrollFactor('boob', 0.5, 0.5);
	addLuaSprite('boob', false);

	makeAnimatedLuaSprite('stuff1', 'newYork/adVert', -830,-730)
	addAnimationByPrefix('stuff1', 'ads', 'ads',24,true)
	addLuaSprite('stuff1',false)
	objectPlayAnimation('stuff1', 'ads',false)
	setScrollFactor('stuff1', 0.5, 0.5);

	makeAnimatedLuaSprite('stuff', 'newYork/NYCBGBOPS', -690,-220)
	addAnimationByPrefix('stuff', 'bgbops', 'nycBGBOPS',24,true)
	addLuaSprite('stuff',false)
	objectPlayAnimation('stuff', 'bgbops',false)
	setScrollFactor('stuff', 0.75, 0.9);

	makeLuaSprite('floor', 'newYork/NYCfloor', -700, 600);
	setScrollFactor('floor', 0.95, 0.95);
	addLuaSprite('floor', false);

	makeAnimatedLuaSprite('daPeeps', 'newYork/NYCFGBOPS', -340,-70)
	addAnimationByPrefix('daPeeps', 'fgbops', 'nycFGBOPS',24,true)
	addLuaSprite('daPeeps',false)
	objectPlayAnimation('daPeeps', 'fgbops',false)
	setScrollFactor('daPeeps', 0.95, 0.95);
	
	if not lowQuality then
		makeLuaSprite('haze', 'newYork/groundHaze', -600, 200);
		setScrollFactor('haze', 0.8, 0.95);
		addLuaSprite('haze', true);
	end
	
	if not lowQuality then
		makeAnimatedLuaSprite('snowy', 'newYork/snow', -300,100)
		addAnimationByPrefix('snowy', 'fall', 'daSnow',32,true)
		addLuaSprite('snowy',true)
		objectPlayAnimation('snowy', 'fall',false)
		setScrollFactor('snowy', 0.7, 1.6);
	end

	if not lowQuality then
		makeAnimatedLuaSprite('bopscreen', 'newYork/NYCSCREENBOPS', -400,650)
		addAnimationByPrefix('bopscreen', 'screenbop', 'nycScreenBops',24,true)
		addLuaSprite('bopscreen',true)
		objectPlayAnimation('bopscreen', 'screenbop',false)
		setScrollFactor('bopscreen', 1.2, 1.1);
	end

	if not lowQuality then
		makeLuaSprite('freeze', 'newYork/screenFreeze', -300, -100);
		addLuaSprite('freeze', true);
		setObjectCamera('freeze', 'hud');
		setObjectOrder('freeze',  1)
		targetAlpha = tonumber(0.5);
			setProperty('freeze.alpha', targetAlpha);
	end

	if not lowQuality then
		makeLuaSprite('action', 'tunnel/movie bars', -500, -200);
		setScrollFactor('action', 0, 0);
		addLuaSprite('action', true);
		setObjectCamera('action', 'hud')
		setObjectOrder('action',  2)
	end

	makeAnimatedLuaSprite('rate', 'ratings', 300,200)
	addAnimationByPrefix('rate', 'sick', 'sickRating',24,false)
	
	
	setScrollFactor('rate', 0, 0);
	setObjectCamera('rate', 'hud')
	
	precacheImage('newYork/screenFreeze');
	precacheImage('newYork/snow');
	precacheImage('newYork/NYCSCREENBOPS');
	precacheImage('newYork/groundHaze');
	precacheImage('newYork/daLights');
	precacheImage('newYork/NYCFGBOPS');
	precacheImage('newYork/NYCBGBOPS');
	precacheImage('newYork/NYCfloor');
	precacheImage('newYork/adVert');
	precacheImage('newYork/NYCfloor');
	precacheImage('newYork/NYCBuildings');
	

end

function onUpdate()

	setProperty('gf.scrollFactor.x', 0.95);
	setProperty('gf.scrollFactor.y', 0.95);

end

function onBeatHit()
	objectPlayAnimation('bopscreen', 'screenbop',true)
	objectPlayAnimation('stuff', 'bgbops',true)
	objectPlayAnimation('daPeeps', 'fgbops',true)
	
end

function onStepHit()
	if stepHitFuncs[curStep] then
		stepHitFuncs[curStep]()
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'daRating' then
		removeLuaSprite('rate'); --removing her to make the game run slightly better
	end
end

function onCreatePost()
   makeLuaText("engineText", "Roasted Cover by MasteroX", 500, 20, 30)
   setTextAlignment("engineText", "left")
   setTextSize("engineText", 20)
   addLuaText("engineText")

   if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
       setProperty('message.y', 682)
       setProperty('engineText.y', 682)
   end
end-------AJAA SI ESTAS VIENDO ESTO ES PORQUE QUIERES SACAR LA MARCA DE AGUA ??VERDAD? PUES POR ALGO LO OCULT?? XD

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.2 then
        setProperty('health', health- 0.035);
    end
end

function onUpdate(elapsed)
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
startVideo('Puto el que lee esto', true);
end
end--------Bueno ya que estas aqui minimo puedes ver el video que edit?? a prueba de CHEATERS(lo hize especialmente para ti :3)