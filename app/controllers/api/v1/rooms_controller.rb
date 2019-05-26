module Api
  module V1
    class RoomsController < ApplicationController
      before_action :set_room, only: [:show, :edit, :update, :destroy]

      # GET /rooms
      # GET /rooms.json
      def index
        @rooms = Room.all
        uri = URI.parse("http://exam-s9imvrxn.spacemarket.jp/api/v1/rooms")
        uri.path = '/api/v1/rooms'
        uri.query = ''
        # # render json: @rooms
        respond_to do |format|
          format.html # => 通常のURLの場合、index.html.erb が返される
          format.json { render json: uri } # URLが.jsonの場合、@products.to_json が返される
        end
      end

      # GET /rooms/1
      # GET /rooms/1.json
      def show
      end

      # GET /rooms/new
      def new
        @room = Room.new
      end

      # GET /rooms/1/edit
      def edit
      end

      # POST /rooms
      # POST /rooms.json
      def create
        @room = Room.new(room_params)

        respond_to do |format|
          if @room.save
            format.html { redirect_to @room, notice: 'Room was successfully created.' }
            format.json { render :show, status: :created, location: @room }
          else
            format.html { render :new }
            format.json { render json: @room.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /rooms/1
      # PATCH/PUT /rooms/1.json
      def update
        respond_to do |format|
          if @room.update(room_params)
            format.html { redirect_to @room, notice: 'Room was successfully updated.' }
            format.json { render :show, status: :ok, location: @room }
          else
            format.html { render :edit }
            format.json { render json: @room.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /rooms/1
      # DELETE /rooms/1.json
      def destroy
        @room.destroy
        respond_to do |format|
          format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_room
          @room = Room.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def room_params
          params.require(:room).permit(:name, :description, :has_daily_price, :daily_price, :has_hourly_price, :hourly_price, :capacity, :reputation_score)
        end
      end
    end
  end
