module EventsHelper

	def timeLeft(eventDate,eventTime)
		
		currentDate = Date.today
		currentTime = Time.now
		eventDateTime = eventDate + eventTime.seconds_since_midnight.seconds

		timeLeft = eventDateTime - Time.now 
		result = ""

		if timeLeft < 0
			return "EXPIRED"	
		
		else 
					
			daysLeft = (eventDate - currentDate).floor 

			if daysLeft == 1
				result += daysLeft.to_s + " Day "

			elsif daysLeft > 1
				result += daysLeft.to_s + " Days "
			end
			
			hoursLeft = (((eventDateTime - Time.now) /3600).round) - (daysLeft*24)

			if hoursLeft == 1
				result += hoursLeft.to_s + " Hour "

			elsif hoursLeft > 1
				result += hoursLeft.to_s + " Hours "
			end		
			
		end			

		result += "Left"

		return result;

	end

end
