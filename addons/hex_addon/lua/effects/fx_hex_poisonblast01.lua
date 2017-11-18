function EFFECT:Init(data)
	local emit = ParticleEmitter(data:GetOrigin())
	local scale = data:GetScale()
	for i=0, 1 do
		local part = emit:Add ("hexgm/sprites/hexbit01", data:GetOrigin())
		part:SetVelocity(Vector(0,0,0))
		part:SetDieTime(0.2*scale)
		part:SetStartSize(100*scale)
		part:SetColor( 155, 255, 55 ) 
		part:SetEndSize(0)
		part:SetRoll(math.Rand(0,360))
		part:SetRollDelta(0)
		part:SetAirResistance(0)
		part:SetGravity(Vector(0, 0, 0))
	end
	for i=0, 1 do
		local part = emit:Add ("hexgm/sprites/hexbit01", data:GetOrigin())
		part:SetVelocity(Vector(0,0,0))
		part:SetDieTime(3+scale)
		part:SetStartSize(55*scale)
		part:SetStartAlpha(55)
		part:SetColor( 55, 75, 25 ) 
		part:SetEndSize(0)
		part:SetRoll(math.Rand(0,360))
		part:SetRollDelta(0)
		part:SetAirResistance(0)
		part:SetGravity(Vector(0, 0, 0))
	end
	for i=0, 25+scale do
		local part = emit:Add ("hexgm/sprites/hexbit01", data:GetOrigin())
		part:SetVelocity(VectorRand()* Vector( math.Rand( -255, 255 ), math.Rand( -255, 255 ), 325 ))
		part:SetStartAlpha(50)
		part:SetEndAlpha(0)
		part:SetDieTime(math.random(1,2)+scale)
		part:SetStartSize(math.random(5,35)*scale)
		part:SetColor( 115, 255, 55 ) 
		part:SetEndSize(0)
		part:SetRoll(0)
		part:SetRollDelta(0)
		part:SetAirResistance(0)
		part:SetGravity(Vector(0, 0, -256))
		part:SetCollide(true)
	end
	for i=0, 15+scale do
		local part = emit:Add ("hexgm/sprites/hexbit08", data:GetOrigin())
		part:SetVelocity(VectorRand()* Vector( math.Rand( -755, 755 ), math.Rand( -755, 755 ), 355 ))
		part:SetStartAlpha(50)
		part:SetEndAlpha(0)
		part:SetStartLength(35)
		part:SetEndLength(1)
		part:SetDieTime(1+scale)
		part:SetStartSize(math.random(15,25)*scale)
		part:SetColor( 115, 215, 55 ) 
		part:SetEndSize(0)
		part:SetRoll(0)
		part:SetRollDelta(0)
		part:SetAirResistance(0)
		part:SetGravity(Vector(0, 0, -155))
	end
	emit:Finish()
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end