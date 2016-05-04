require_relative "view"
require_relative "task"

class Controller

  # Ajout des taches
  # Afficher les taches
  # déclarer une tache comme réalisée
  #

  def initialize
    @tasks = []
    @view = View.new
  end


  def list            # Affichage des taches en liste

    @view.print_tasks(@tasks)

  end

  def add
    description = @view.ask_user_for_description
    task = Task.new(description)
    @tasks << task
  end

  def mark_as_done
    id = @view.ask_user_for_id
    task = @tasks[id]
    task.mark_as_done
  end

end
