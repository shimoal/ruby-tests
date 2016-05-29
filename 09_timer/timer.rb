class Timer
attr_accessor :seconds




def initialize
	@seconds = 0
	@minutes = 0
	@hours = 0
end

def time_string					
	if @seconds >= 3600 then
		@hours = @seconds/60/60
		@minutes = (@seconds/60) - (@hours * 60)
		@seconds = @seconds - (@hours*60*60) - (@minutes * 60)
	elsif @seconds >= 60 then 
		@minutes = @seconds/60
		@seconds = @seconds -(@minutes * 60)
	else 
		@seconds = @seconds
	end
	
	if @hours > 10 then
		@hours = @hours.to_s
	else
		@hours = "0"+@hours.to_s
	end
	if @minutes > 10 then
		@minutes = @minutes.to_s
	else
		@minutes = "0"+@minutes.to_s
	end
	if @seconds > 10 then
		@seconds = @seconds.to_s
	else
		@seconds = "0"+@seconds.to_s
	end
	
	@timer = @hours+":"+@minutes+":"+@seconds
end

def timer
@timer
end


end


