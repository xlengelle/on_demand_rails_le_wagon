require_relative "controller"

controller = Controller.new

controller.add
controller.add
controller.list

controller.mark_as_done
controller.list
