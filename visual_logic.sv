module visual_logic (input        [9:0] BallX, BallY, DrawX, DrawY, Ball_size,
							output [5:0] decider_value
							);
							
			logic[39:0][5:0] player_movements;
			logic[39:0][5:0] monster_movements;
			logic[39:0][5:0] items_movements;
			
			
			always_comb	
				begin
				if ( (Ball_Y_Pos + Ball_Size) >=  )  
					  value = player_movement[DrawX];    
					  
				 else if ( (Ball_Y_Pos - Ball_Size) <= Ball_Y_Min )  
					   value = player_movement[DrawY];
					  
				  else if ( (Ball_X_Pos + Ball_Size) >= Ball_X_Max )  
					   value = player_movement[BallX];  
					  
				 else if ( (Ball_X_Pos - Ball_Size) <= Ball_X_Min )  
					   value = player_movement[BallY];
						
				end
			always_comb	
				begin
				if ( (Ball_Y_Pos + Ball_Size) >=  )  
					  value = monster_movements[DrawX];    
					  
				 else if ( (Ball_Y_Pos - Ball_Size) <= Ball_Y_Min )  
					   value = monster_movements[DrawY];
					  
				  else if ( (Ball_X_Pos + Ball_Size) >= Ball_X_Max )  
					   value = monster_movements[BallX];  
					  
				 else if ( (Ball_X_Pos - Ball_Size) <= Ball_X_Min )  
					   value = monster_movements[BallY];
						
				end
			always_comb	
				begin
				if ( (Ball_Y_Pos + Ball_Size) >=  )  
					  value = items_movements[DrawX];    
					  
				 else if ( (Ball_Y_Pos - Ball_Size) <= Ball_Y_Min )  
					   value = items_movements[DrawY];
					  
				  else if ( (Ball_X_Pos + Ball_Size) >= Ball_X_Max )  
					   value = items_movements[BallX];  
					  
				 else if ( (Ball_X_Pos - Ball_Size) <= Ball_X_Min )  
					   value = items_movements[BallY];
						
				end
		
endmodule		
						
						
						
