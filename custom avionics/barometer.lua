size={440,256}

function draw() 
	drawAll(components) 
	local millibars = 1000*(get(currentBaro) / 29.5333727)
	drawText(font_Sans24,  380, 136, math.floor(millibars), 1,1,1)
end
