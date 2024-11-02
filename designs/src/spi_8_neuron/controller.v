module controller(
    input clk, rst,
    input spi_done, 
    input [7:0] spi_input,
    output reg [7:0] control,
    output reg set_din,
    output reg set_data_in,
    output reg trig
);

wire result_ready;
assign result_ready = 1;

localparam IDLE=0, SAVE_CMD=1, SAVE_DATA=2, TRIG=3, WAIT_RESULT=4, SEND_RESULT=5, SAVE_DIN=6, WAIT_DATA=7, SAVE_CMD_EXT=8;

reg set_control, start_send;
reg [3:0] state, next_state;

always @(posedge clk) begin
    if(rst) state <= IDLE;
    else state <= next_state;
end

always @(*) begin
    next_state=state;
    set_control=0;//(state==SAVE_CMD||state==SAVE_CMD_EXT)?1:0;
    set_data_in=0;
    start_send=0;
    set_din=0;
    trig=0;
    case(state)
        IDLE: begin
            if(spi_done) begin
                next_state = SAVE_CMD;
            end
        end 
        SAVE_CMD: begin
            set_control=1;
            next_state = SAVE_CMD_EXT;
        end
        SAVE_CMD_EXT: begin
            set_control=1;
            next_state = WAIT_DATA;
        end
        WAIT_DATA: begin
            if(spi_done) begin
                if(control[7:6]==2'b00) next_state = SAVE_DATA;
                else if(control[7:6]==2'b01) next_state = SAVE_DIN;
                else if(control[7:6]==2'b10) next_state = TRIG;
                else if(control[7:6]==2'b11) next_state = SEND_RESULT;
            end
        end
        SAVE_DATA: begin
            set_data_in=1;
            next_state = IDLE;
        end
        SAVE_DIN: begin
            set_din=1;
            next_state = IDLE;
        end
        TRIG: begin
            trig = 1;
            next_state=WAIT_RESULT;
        end
        WAIT_RESULT: begin
            if(result_ready) next_state = IDLE;
        end
        SEND_RESULT: begin
            start_send = 1;
            if(spi_done) next_state = IDLE;
        end
        default: begin
            next_state = IDLE;
        end
    endcase
end

always @(posedge clk) begin
    if(rst) begin
        control <= 0;
    end
    else if(set_control) begin
        control <= spi_input;
    end
end
    
endmodule

//primeros 3 bits son a que neurona
//segundos 2 bits son si es w, b o s
//ultimos 2 bits son para indicar si es escritura o lectura