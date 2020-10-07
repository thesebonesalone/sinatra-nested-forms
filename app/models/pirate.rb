require 'pry'
class Pirate
    attr_accessor :name, :weight, :height, :ships
    @@all = []
    def initialize(params)
        @weight = params[:pirate][:weight]
        @name = params[:pirate][:name]
        @height = params[:pirate][:height]
        @@all << self
    end
    def self.all
        @@all
    end
end