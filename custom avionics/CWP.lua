size={222,88}

function draw() -- Central Warning Panel
	drawAll(components) 
	if get(batteryON) > 0 then	
		if get(cwpTest) == 1 then 

			drawText(font_Sans10,    4, 35, 'ENG.P' ,1.0, 0.1, 0)
			drawText(font_Sans10,    4, 8, 'GEN' ,1.0, 0.1, 0)
			
			drawText(font_Sans10,  39, 64, 'PITOT' ,1.0, 0.1, 0)
			drawText(font_Sans10,  39, 35, 'MGB.P' ,1.0, 0.1, 0)
			drawText(font_Sans10,  39, 8, 'ALT.NR' ,1.0, 0.1, 0)
				
			drawText(font_Sans10,  74, 35, 'MGB.T' ,1.0, 0.1, 0)
			drawText(font_Sans10,  82, 8, 'BAT' ,1.0, 0.1, 0)
						
			drawText(font_Sans10, 153, 64, 'NAV' , 1.0, 0.1, 0)
			
			drawText(font_Sans10, 190, 64, 'FUEL' , 1.0, 0.1, 0)
			drawText(font_Sans10,  187, 35, 'F.FILT' ,1.0, 0.1, 0)
			
		else
		
				local EOP = get(engOilPressure)/14.5
			if EOP < 1.7 then
				drawText(font_Sans10,  4, 35, 'ENG.P' ,1.0, 0.1, 0)-- < 1.7 bar
			else
				drawText(font_Sans10,  4, 35, 'ENG.P' , 0.3, 0.0, 0) 
			end	
			if get(NF) < 0.4 then
				drawText(font_Sans10,  4, 8, 'GEN' ,1.0, 0.1, 0) 	-- Only normally on at start/shutdown <40% NG  ??
			else
				drawText(font_Sans10,  4, 8, 'GEN' ,0.3, 0.0, 0)
			end	
			drawText(font_Sans10, 39, 64,  'PITOT' ,  0.3, 0.0, 0) -- not yet avl
			drawText(font_Sans10,  39, 35, 'MGB.P' , 0.3, 0.0, 0)-- Pressure less than 1 bar 

			if get(NF) < 0.5 then
				drawText(font_Sans10,  39, 8, 'ALT.NR' , 1.0, 0.1, 0)
			else
				drawText(font_Sans10,  39, 8, 'ALT.NR' , 0.3, 0.0, 0)
			end 
	
			drawText(font_Sans10,  74, 35, 'MGB.T' ,  0.3, 0.0, 0) -- not yet avl
			drawText(font_Sans10,  82, 8, 'BAT' , 0.3, 0.0, 0) -- FAIL or GPU attached ??
			if get(NF) < 0.6 then
				drawText(font_Sans10, 153, 64, 'NAV' , 1.0, 0.1, 0)
			else
				drawText(font_Sans10, 153, 64, 'NAV' , 0.3, 0.0, 0)
			end 
			if get(fuelKg) < 30 then
				drawText(font_Sans10, 190, 64, 'FUEL' ,1.0, 0.1, 0) --  < 30 kg 
			else
				drawText(font_Sans10, 190, 64, 'FUEL' , 0.3, 0.0, 0) -- 		
			end
			drawText(font_Sans10,  187, 35, 'F.FILT' ,0.3, 0.0, 0) 


		end -- of cwpTest switch testing
	end -- of if get(batteryON) > 0
end
