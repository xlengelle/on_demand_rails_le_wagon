require_relative "controller"

class Router
  def initialize
    @controller = Controller.new
  end

  def start
    loop do
      puts "Menu todo_list"
      puts "--------------"
      puts "1 - Ajout tache"
      puts "2 - liste Tache"
      puts "3 - marquer tache"
      action = gets.chomp.to_i

      if action == 1
        @controller.add
      elsif action == 2
        @controller.list
      elsif action == 3
        @controller.mark_as_done
      else
        puts "Mauvais choix ..."
      end



    end
  end

end

# Was pretty fun indeed
# Loved it, nailed it.
# Created with love after watching OnDemand By LeWagon
