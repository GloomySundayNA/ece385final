//-------------------------------------------------------------------------
//    Color_Mapper.sv                                                    --
//    Stephen Kempf                                                      --
//    3-1-06                                                             --
//                                                                       --
//    Modified by David Kesler  07-16-2008                               --
//    Translated by Joe Meng    07-07-2013                               --
//                                                                       --
//    Fall 2014 Distribution                                             --
//                                                                       --
//    For use with ECE 385 Lab 7                                         --
//    University of Illinois ECE Department                              --
//-------------------------------------------------------------------------


module  color_mapper ( input        [9:0] BallX, BallY, DrawX, DrawY, Ball_size, 
                       output logic [7:0]  Red, Green, Blue,
								input [5:0] decider_value);
    
    logic ball_on;
	 
 /* Old Ball: Generated square box by checking if the current pixel is within a square of length
    2*Ball_Size, centered at (BallX, BallY).  Note that this requires unsigned comparisons.
	 
    if ((DrawX >= BallX - Ball_size) &&
       (DrawX <= BallX + Ball_size) &&
       (DrawY >= BallY - Ball_size) &&
       (DrawY <= BallY + Ball_size))

     New Ball: Generates (pixelated) circle by using the standard circle formula.  Note that while 
     this single line is quite powerful descriptively, it causes the synthesis tool to use up three
     of the 12 available multipliers on the chip!  Since the multiplicants are required to be signed,
	  we have to first cast them from logic to int (signed by default) before they are multiplied). */
	  
    int DistX, DistY, Size;
	 assign DistX = DrawX - BallX;
    assign DistY = DrawY - BallY;
    assign Size = Ball_size;
	  
    always_comb
    begin:Ball_on_proc
        if ( ( DistX*DistX + DistY*DistY) <= (Size * Size) ) 
            ball_on = 1'b1;
        else 
            ball_on = 1'b0;
     end 
       
    always_comb
    begin:RGB_Display
        if ((ball_on == 1'b1)) 
        begin 
            Red = 8'hff;
            Green = 8'h55;
            Blue = 8'h00;
        end       
        else 
        begin 
            Red = 8'h00; 
            Green = 8'h00;
            Blue = 8'h7f - DrawX[9:3];
        end      
    end 
    
	always_comb
		begin:RGB_Display
			if ((value==6'b000001))
					begin
						Red=8'h00;
						Green=8'h00;
			Blue=8'h00;
end
else if ((decider_value==6'b000010))
begin
Red=8'h10;
Green=8'h10;
Blue=8'h10;
end
else if ((decider_value==6'b000011))
begin
Red=8'hf8;
Green=8'hf8;
Blue=8'hf8;
end
else if ((decider_value==6'b000100))
begin
Red=8'ha7;
Green=8'ha7;
Blue=8'ha7;
end
else if ((decider_value==6'b000101))
begin
Red=8'hff;
Green=8'hd2;
Blue=8'hb8;
end
else if ((decider_value==6'b000110))
begin
Red=8'hff;
Green=8'hd3;
Blue=8'hba;
end
else if ((decider_value==6'b000111))
begin
Red=8'hff;
Green=8'hff;
Blue=8'hff;
end
else if ((decider_value==6'b001000))
begin
Red=8'hff;
Green=8'ha2;
Blue=8'h3c;
end
else if ((decider_value==6'b001001))
begin
Red=8'hff;
Green=8'hde;
Blue=8'h78;
end
else if ((decider_value==6'b001010))
begin
Red=8'hf0;
Green=8'h00;
Blue=8'h00;
end
else if ((decider_value==6'b001011))
begin
Red=8'hff;
Green=8'h00;
Blue=8'h00;
end
else if ((decider_value==6'b001100))
begin
Red=8'h9a;
Green=8'h9a;
Blue=8'h9a;
end
else if ((decider_value==6'b001101))
begin
Red=8'h43;
Green=8'h13;
Blue=8'h13;
end
else if ((decider_value==6'b001110))
begin
Red=8'hf4;
Green=8'h44;
Blue=8'h18;
end
else if ((decider_value==6'b001111))
begin
Red=8'h5c;
Green=8'h3c;
Blue=8'h25;
end
else if ((decider_value==6'b010000))
begin
Red=8'hff;
Green=8'h72;
Blue=8'h33;
end
else if ((decider_value==6'b010001))
begin
Red=8'hfa;
Green=8'h9a;
Blue=8'h6c;
end
else if ((decider_value==6'b010010))
begin
Red=8'hff;
Green=8'hd3;
Blue=8'hba;
end
else if ((decider_value==6'b010011))
begin
Red=8'h73;
Green=8'h60;
Blue=8'h37;
end
else if ((decider_value==6'b010100))
begin
Red=8'hb3;
Green=8'hc2;
Blue=8'hd4;
end
else if ((decider_value==6'b010101))
begin
Red=8'h00;
Green=8'h3c;
Blue=8'h86;
end
else if ((decider_value==6'b010110))
begin
Red=8'h00;
Green=8'h56;
Blue=8'hd0;
end
else if ((decider_value==6'b010111))
begin
Red=8'h1e;
Green=8'h1e;
Blue=8'h50;
end
else if ((decider_value==6'b011000))
begin
Red=8'h6f;
Green=8'h51;
Blue=8'h44;
end
else if ((decider_value==6'b011001))
begin
Red=8'hca;
Green=8'h67;
Blue=8'h3c;
end
else if ((decider_value==6'b011010))
begin
Red=8'hef;
Green=8'h62;
Blue=8'h25;
end
else if ((decider_value==6'b011011))
begin
Red=8'hfc;
Green=8'h62;
Blue=8'h20;
end
else if ((decider_value==6'b011100))
begin
Red=8'hb3;
Green=8'hc2;
Blue=8'hd4;
end
else if ((decider_value==6'b011101))
begin
Red=8'hb3;
Green=8'hc2;
Blue=8'hd4;
end
else if ((decider_value==6'b011110))
begin
Red=8'h00;
Green=8'h56;
Blue=8'hd0;
end
else if ((decider_value==6'b011111))
begin
Red=8'h1e;
Green=8'h1e;
Blue=8'h50;
end
else if ((decider_value==6'b100000))
begin
Red=8'h5c;
Green=8'h3c;
Blue=8'h25;
end
else if ((decider_value==6'b100001))
begin
Red=8'h7e;
Green=8'h60;
Blue=8'h37;
end
else if ((decider_value==6'b100010))
begin
Red=8'hff;
Green=8'h72;
Blue=8'h33;
end
else if ((decider_value==6'b100011))
begin
Red=8'h63;
Green=8'hd4;
Blue=8'h13;
end
else if ((decider_value==6'b100100))
begin
Red=8'h00;
Green=8'h3e;
Blue=8'h83;
end
else if ((decider_value==6'b100101))
begin
Red=8'h76;
Green=8'h60;
Blue=8'h3c;
end
else if ((decider_value==6'b100110))
begin
Red=8'hc3;
Green=8'h79;
Blue=8'h4e;
end
else if ((decider_value==6'b100111))
begin
Red=8'had;
Green=8'h63;
Blue=8'h38;
end
else if ((decider_value==6'b101000))
begin
Red=8'hb0;
Green=8'h66;
Blue=8'h3b;
end
else if ((decider_value==6'b101001))
begin
Red=8'hb4;
Green=8'h6a;
Blue=8'h3f;
end
else if ((decider_value==6'b101010))
begin
Red=8'h44;
Green=8'h2d;
Blue=8'h1a;
end
else if ((decider_value==6'b101011))
begin
Red=8'h50;
Green=8'h39;
Blue=8'h26;
end
else if ((decider_value==6'b101100))
begin
Red=8'ha3;
Green=8'h29;
Blue=8'h0d;
end
else if ((decider_value==6'b101101))
begin
Red=8'h38;
Green=8'h16;
Blue=8'h16;
end
else if ((decider_value==6'b101110))
begin
Red=8'h39;
Green=8'h19;
Blue=8'h19;
end
else if ((decider_value==6'b101111))
begin
Red=8'hb8;
Green=8'h6e;
Blue=8'h43;
end
else if ((decider_value==6'b110000))
begin
Red=8'hb9;
Green=8'h6f;
Blue=8'h44;
end
else if ((decider_value==6'b110001))
begin
Red=8'hff;
Green=8'hf3;
Blue=8'h0f;
end
else if ((decider_value==6'b110010))
begin
Red=8'hff;
Green=8'h7b;
Blue=8'h0f;
end
else if ((decider_value==6'b110011))
begin
Red=8'h00;
Green=8'hf0;
Blue=8'h00;
end
else if ((decider_value==6'b110100))
begin
Red=8'hff;
Green=8'h0f;
Blue=8'h0f;
end
else if ((decider_value==6'b110101))
begin
Red=8'ha3;
Green=8'h29;
Blue=8'h0d;
end
else if ((decider_value==6'b110110))
begin
Red=8'hcf;
Green=8'h9f;
Blue=8'h87;
end
else if ((decider_value==6'b110111))
begin
Red=8'hcf;
Green=8'ha0;
Blue=8'h87;
end
else
begin
Red=8'h3B ;
Green=8'hB9;
Blue=8'hff;
end
end
endmodule
