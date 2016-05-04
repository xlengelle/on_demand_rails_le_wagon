class View

  def print_tasks(tasks)
    puts "Liste des taches en cours"
    puts "-------------------------"


    tasks.each_with_index do |task, index|
      marqueur = "[ ]"
      if task.done
        marqueur = "[x]"
      end
      puts "#{index + 1} / #{marqueur} - #{task.description}"
    end
  end

  def ask_user_for_description
    puts "Saisissez la description : "
    description = gets.chomp
    return description
  end

  def ask_user_for_id
    puts "Saisissez l'ID de la tache à marquer' : "
    id = gets.chomp.to_i
    return (id - 1)
  end

end
