class BusController < ApplicationController
  def index

  end

  def update_gps
    begin
      bus_key = params[:bus_key] || ""
      longitude = params[:long].to_f
      latitude = params[:lat].to_f
      bus = Bus.bus_key(bus_key).first
      if !bus.nil?
        #update gps
        gps = Gps.bus_id(bus.id).first
        Gps.update(gps.id, :long => longitude, :lat => latitude) unless gps.nil?
        render :json => {:success => true}
      else
        render :json => {:success => false}
      end
    rescue Exception => ex
      render :json => {:success => false, :message => ex.message, :backtrace => ex.backtrace}
    end
  end

  def update_info

  end


  def show
    bus_key = params[:bus_key] || ""
    bus = Bus.bus_key(bus_key).first
    if bus
      render :json => {:success => true, :bus => bus}
    else
      render :json => {:success => false}
    end
  end
end
